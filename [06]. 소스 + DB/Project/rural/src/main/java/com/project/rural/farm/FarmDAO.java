package com.project.rural.farm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.project.rural.DBUtil;

/**
 * 주말농장 관련 데이터 DB 작업을 위한 클래스
 * @author 유기호
 */
public class FarmDAO {

	private Connection conn;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	/**
	 * 생성자
	 * 생성과 동시에 DB 연동
	 */
	public FarmDAO() {
		
		try {
			conn = DBUtil.open();
		} catch (Exception e) {
			System.out.println("FarmDAO.FarmDAO()");
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 주말농장 데이터를 DB에 추가한다.
	 * @param dto 추가할 주말농장 데이터
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int add(FarmDTO dto) {
	
		try {
			
			String sql = "insert into tblfarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)"
					+ " values (seqFarm.nextVal, ?, ?, ?, ?, ?, ?, ?, default, default, ?)";
		    
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getTel());
			pstat.setString(4, dto.getAddress());
			pstat.setString(5, dto.getArea());
			pstat.setString(6, dto.getPrice());
			pstat.setString(7, dto.getDetail());
			pstat.setString(8, dto.getImage());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return 0;
	}

	/**
	 * DB에서 검색 결과와 일치하는 모든 주말농장 데이터를 가져온다.
	 * @param map 검색 조건 및 페이지 정보
	 * @return 주말농장 목록
	 */
	public ArrayList<FarmDTO> list(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("isSearch").equals("y")) {
				where = "where ";
			}
			
			if (!map.get("address").equals("")) {
				where += String.format("address like '%%%s%%' and ", map.get("address"));
			}
			if (map.get("area") != null && !map.get("area").equals("")) {
				where += String.format("extraArea >= %s and ", map.get("area"));
			}
			if (map.get("price") != null && !map.get("price").equals("")) {
				where += String.format("price <= %s and ", map.get("price"));
			}
			if (map.get("column") != null && !map.get("column").equals("") 
					&& map.get("search") != null && !map.get("search").equals("")) {
				if (map.get("column").equals("all")) {
					where += String.format("(name like '%%%s%%' or detail like '%%%s%%')", map.get("search"), map.get("search"));
				} else {
					where += String.format("%s like '%%%s%%'", map.get("column"), map.get("search"));
				}
			}
			
			if (where.endsWith("and ")) {
				where = where.substring(0, where.length()-4);
			}
			
			String sql = String.format("select * from (select f.*, rownum as rnum from vwFarm f %s) where rnum between %s and %s order by regDate desc"
					, where
					, map.get("begin")
					, map.get("end"));
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<FarmDTO> list = new ArrayList<FarmDTO>();
			
			while (rs.next()) {
				
				FarmDTO dto = new FarmDTO();
				
				String name = rs.getString("name");
				String address = rs.getString("address");
				
				if (name.length()>8) {
					name = name.substring(0,8) + "...";
				}
				if (address.length()>30) {
					address = address.substring(0,30) + "...";
				}

				String isEnd = rs.getString("isEnd");
				if (rs.getString("extraArea").equals("0")) {
					isEnd = "y";
				}
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(name);
				dto.setAddress(address);
				dto.setTel(rs.getString("tel"));
				dto.setArea(rs.getString("area"));
				dto.setPrice(rs.getString("price"));
				dto.setIsEnd(isEnd);
				dto.setImage(rs.getString("image"));
				dto.setExtraArea(rs.getString("extraArea"));
				dto.setAvgStar(rs.getString("avgStar"));
				dto.setReviewCount(rs.getString("reviewCount"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * DB에서 특정 주말농장 데이터를 가져온다.
	 * @param seq 주말농장 번호
	 * @return 주말농장 데이터
	 */
	public FarmDTO get(String seq) {
		
		try {
			
			String sql = "select * from vwFarm where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				FarmDTO dto = new FarmDTO();
				
				String isEnd = rs.getString("isEnd");
				if (rs.getString("extraArea").equals("0")) {
					isEnd = "y";
				}
				
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setOwnerName(rs.getString("ownerName"));
				dto.setAddress(rs.getString("address"));
				dto.setTel(rs.getString("tel"));
				dto.setArea(rs.getString("area"));
				dto.setPrice(rs.getString("price"));
				dto.setIsEnd(isEnd);
				dto.setRegDate(rs.getString("regDate"));
				dto.setImage(rs.getString("image"));
				dto.setExtraArea(rs.getString("extraArea"));
				dto.setAvgStar(rs.getString("avgStar"));
				dto.setReviewCount(rs.getString("reviewCount"));
				
				//글 내용에 개행 문자 처리하기
				String detail = rs.getString("detail");
				detail = detail.replace("\r\n", "<br>");
				dto.setDetail(detail);
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * 주말농장 데이터를 DB에서 수정한다.
	 * @param dto 수정할 주말농장 데이터
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int edit(FarmDTO dto) {
		
		try {
			
			String sql = "update tblFarm set name = ?, tel = ?, address = ?, area = ?, price = ?, detail = ?, isEnd = ?, image = ? where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getTel());
			pstat.setString(3, dto.getAddress());
			pstat.setString(4, dto.getArea());
			pstat.setString(5, dto.getPrice());
			pstat.setString(6, dto.getDetail());
			pstat.setString(7, dto.getIsEnd());
			pstat.setString(8, dto.getImage());
			pstat.setString(9, dto.getSeq());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	/**
	 * 주말농장 데이터를 DB에서 삭제한다.
	 * @param seq 주말농장 번호
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int del(String seq) {
		
		try {
			
			String sql = "delete from tblFarm where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	/**
	 * 주말농장 리뷰 데이터를 DB에 추가한다.
	 * @param dto 추가할 주말농장 리뷰 데이터
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int addReview(ReviewDTO dto) {
		
		try {
			
			String sql = "select * from tblFarmApply where id = ? and pseq = ? and isPass = 'y'";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPseq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) { //해당 주말농장 신청 승인(1개 이상)된 경우
				sql = "insert into tblFarmReview (seq, pseq, id, detail, regDate, star)"
						+ " values (seqFarmReview.nextVal, ?, ?, ?, default, ?)";
				
				pstat = conn.prepareStatement(sql);
				
				pstat.setString(1, dto.getPseq());
				pstat.setString(2, dto.getId());
				pstat.setString(3, dto.getDetail());
				pstat.setString(4, dto.getStar());
				
				return pstat.executeUpdate();
				
			} else {
				return 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	/**
	 * DB에서 특정 주말농장의 리뷰 페이지 정보와 일치하는 모든 주말농장 리뷰 데이터를 가져온다.
	 * @param map 리뷰 페이지 정보
	 * @return 주말농장 리뷰 목록
	 */
	public ArrayList<ReviewDTO> listReview(HashMap<String, String> map) {
		
		try {
			
			String sql = String.format("select * from (select fr.*, rownum as rnum from tblFarmReview fr where pseq =  %s) where rnum between %s and %s order by regDate desc"
					, map.get("pseq")
					, map.get("begin")
					, map.get("end"));
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ReviewDTO> rlist = new ArrayList<ReviewDTO>();
			
			while (rs.next()) {
				
				ReviewDTO dto = new ReviewDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setPseq(rs.getString("pseq"));
				dto.setId(rs.getString("id"));
				dto.setDetail(rs.getString("detail"));
				dto.setRegDate(rs.getString("regDate").split(" ")[0]);
				dto.setStar(rs.getString("star"));
				
				//리뷰 내용에 개행 문자 처리하기
				String detail = dto.getDetail();
				detail = detail.replace("\r\n", "<br>");
				dto.setDetail(detail);
				
				rlist.add(dto);
			}
			
			return rlist;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	/**
	 * 주말농장 리뷰 데이터를 DB에서 삭제한다.
	 * @param seq 주말농장 리뷰 번호
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int delReview(String seq) {
		
		try {
			
			String sql = "delete from tblFarmReview where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}

	/**
	 * 특정 주말농장의 모든 리뷰 데이터를 DB에서 삭제한다.
	 * @param seq 주말농장 번호
	 */
	public void delAllReview(String seq) {
		
		try {
			
			String sql = "delete from tblFarmReview where pseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 특정 주말농장의 모든 신청 데이터를 DB에서 삭제한다.
	 * @param seq 주말농장 번호
	 */
	public void delAllapply(String seq) {
		
		try {
			
			String sql = "delete from tblFarmApply where pseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * DB에서 특정 회원이 등록한 모든 주말농장 데이터를 가져온다.
	 * @param id 아이디
	 * @return 주말농장 목록
	 */
	public ArrayList<FarmDTO> addList(String id) {
		
		try {
			
			String sql = "select * from vwFarm where id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<FarmDTO> list = new ArrayList<FarmDTO>();
			
			while (rs.next()) {
				
				FarmDTO dto = new FarmDTO();
				
				String isEnd = rs.getString("isEnd");
				if (rs.getString("extraArea").equals("0")) {
					isEnd = "y";
				}
				
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setAddress(rs.getString("address"));
				dto.setTel(rs.getString("tel"));
				dto.setArea(rs.getString("area"));
				dto.setPrice(rs.getString("price"));
				dto.setIsEnd(isEnd);
				dto.setRegDate(rs.getString("regDate"));
				dto.setImage(rs.getString("image"));
				dto.setExtraArea(rs.getString("extraArea"));
				dto.setAvgStar(rs.getString("avgStar"));
				dto.setReviewCount(rs.getString("reviewCount"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * 주말농장 신청 데이터를 DB에 추가한다.
	 * @param dto 추가할 주말농장 신청 데이터
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int addApply(ApplyDTO dto) {
		
		try {
			
			String sql = "insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)"
					+ " values (seqFarmApply.nextVal, ?, ?, ?, default, default)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getPseq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getArea());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	/**
	 * DB에서 특정 회원이 신청한 모든 주말농장 신청 데이터를 가져온다.
	 * @param id 아이디
	 * @return 주말농장 신청 목록
	 */
	public ArrayList<ApplyDTO> applyList(String id) {
		
		try {
			
			String sql = "select * from vwFarmApply where id = ? order by regDate desc";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<ApplyDTO> list = new ArrayList<ApplyDTO>();
			
			while (rs.next()) {
				
				ApplyDTO dto = new ApplyDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setPseq(rs.getString("pseq"));
				dto.setArea(rs.getString("area"));
				dto.setPrice(rs.getString("price"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setIsPass(rs.getString("isPass"));
				dto.setPassDate(rs.getString("passDate"));
				dto.setName(rs.getString("name"));
				dto.setAddress(rs.getString("address"));
				dto.setTel(rs.getString("tel"));
				dto.setOwnerName(rs.getString("ownerName"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * 주말농장 신청 데이터를 DB에서 삭제한다.
	 * @param seq 주말농장 신청 번호
	 * @return DB 작업 성공여부(1:성공/0:실패)
	 */
	public int delApply(String seq) {
		
		try {
			
			String sql = "delete from tblFarmApply where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	/**
	 * DB에서 특정 주말농장을 신청한 신청 데이터를 가져온다.
	 * @param map 필터링 조건
	 * @return 주말농장 신청 목록
	 */
	public ArrayList<ApplyDTO> applicant(HashMap<String, String> map) {
		
		try {
			
			String query = "";
			
			if (map.get("isView") != null && !map.get("isView").equals("")) {
				query += "and isPass = '" + map.get("isView") + "'";
			}
			
			String sql = String.format("select * from (select fa.*, rownum as rnum from vwFarmApply fa where pseq = %s%s) where rnum between %s and %s order by regDate desc"
					, map.get("seq")
					, query
					, map.get("begin")
					, map.get("end"));
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ApplyDTO> list = new ArrayList<ApplyDTO>();
			
			while (rs.next()) {
				
				ApplyDTO dto = new ApplyDTO();
				
				String regDate = rs.getString("regDate").split(" ")[0];
				String passDate = "";
				if (rs.getString("isPass").equals("y")) {
					passDate = rs.getString("passDate").split(" ")[0];
				}
				
				dto.setSeq(rs.getString("seq"));
				dto.setPseq(rs.getString("pseq"));
				dto.setId(rs.getString("id"));
				dto.setUserName(rs.getString("userName"));
				dto.setArea(rs.getString("area"));
				dto.setUserTel(rs.getString("userTel"));
				dto.setRegDate(regDate);
				dto.setIsPass(rs.getString("isPass"));
				dto.setPassDate(passDate);
				dto.setOwnerId(rs.getString("ownerId"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	/**
	 * 특정 주말농장 신청 내역을 승인한다.
	 * @param seqs 승인할 주말농장 신청 번호
	 * @return DB작업 성공여부(양수:성공/0:실패)
	 */
	public int passApply(String[] seqs) {
		
		int cnt = 0;
		
		try {
			
			String sql = "update tblFarmApply set isPass = 'y', passDate = sysdate where seq = ?";
			
			for (String seq : seqs) {
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, seq);
				pstat.executeUpdate();
				cnt++;
			}
			
			return cnt;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	/**
	 * 검색 결과에 따른 총 게시물 수를 반환한다.
	 * @param map 필터링 조건
	 * @return 검색 결과에 따른 총 게시물 수
	 */
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("isSearch").equals("y")) {
				where = "where ";
			}
			
			if (!map.get("address").equals("")) {
				where += String.format("address like '%%%s%%' and ", map.get("address"));
			}
			if (map.get("area") != null && !map.get("area").equals("")) {
				where += String.format("extraArea >= %s and ", map.get("area"));
			}
			if (map.get("price") != null && !map.get("price").equals("")) {
				where += String.format("price <= %s and ", map.get("price"));
			}
			if (map.get("column") != null && !map.get("column").equals("") 
					&& map.get("search") != null && !map.get("search").equals("")) {
				if (map.get("column").equals("all")) {
					where += String.format("(name like '%%%s%%' or detail like '%%%s%%')", map.get("search"), map.get("search"));
				} else {
					where += String.format("%s like '%%%s%%'", map.get("column"), map.get("search"));
				}
			}
			
			if (where.endsWith("and ")) {
				where = where.substring(0, where.length()-4);
			}
			
			String sql = String.format("select count(*) as cnt from vwFarm %s", where);
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	/**
	 * 특정 주말농장에 등록된 총 리뷰 수를 반환한다.
	 * @param seq 주말농장 번호
	 * @return 총 리뷰 개수
	 */
	public int getTotalRevCount(String seq) {
		
		try {
			
			String sql = String.format("select count(*) as cnt from tblFarmReview where pseq =  %s", seq);
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	/**
	 * 특정 주말농장을 임대 신청한 사람의 수 를 반환한다.
	 * @param seq 주말농장 번호
	 * @return 총 신청자 수
	 */
	public int getTotalApplicant(HashMap<String, String> map) {
		
		try {
			
			String sql = "select count(*) as cnt from vwFarmApply where pseq = " + map.get("seq");
			
			if (map.get("isView") != null && !map.get("isView").equals("")) {
				sql += "and isPass = '" + map.get("isView") + "'";
			}
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
}
