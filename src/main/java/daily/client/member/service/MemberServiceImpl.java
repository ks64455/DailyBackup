package daily.client.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import daily.client.member.dao.MemberDAO;
import daily.client.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO dao;

	//회원 가입
	@Override
	public void join(MemberVO vo) throws Exception {
		dao.join(vo);
	}

	//아이디 중복체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO lvo) {
		return dao.login(lvo);
	}
	
	//마이페이지 본인확인
	@Override
	public MemberVO mypage(MemberVO lvo) {
		return dao.mypage(lvo);
	}
	
	//마이페이지 회원정보 상세보기
	@Override
	public MemberVO memberMypage(int m_num) {
		return dao.memberMypage(m_num);
	}
	
	//아이디 찾기
	@Override
	public int idFind(MemberVO vo) throws Exception {
		int result = dao.idFind(vo);
		return result;
	}
}
