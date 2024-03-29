package daily.client.member.dao;

import daily.client.member.vo.MemberVO;

public interface MemberDAO {

	//회원 가입
	public void join(MemberVO vo) throws Exception;
	
	//아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO lvo);
	
	//마이페이지 본인확인
	public MemberVO mypage(MemberVO lvo);
	
	//마이페이지 회원정보 상세보기
	public MemberVO memberMypage(int m_num);

	//아이디 찾기
	public int idFind(MemberVO vo) throws Exception;
}
