package daily.admin.designer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import daily.admin.designer.vo.DesignerVO;
import daily.client.reserve.vo.ReserveVo;

@Repository
public class DesignerDaoImpl implements DesignerDao {

	@Autowired
	private SqlSession session;

	
	@Override
	public List<DesignerVO> designerList() {
		return session.selectList("designerList");
	}

	@Override
	public DesignerVO designerDetail(int des_num) {
		return session.selectOne("designerDetail", des_num);
	}

	@Override
	public int insertDesigner(DesignerVO dvo) {
		return session.insert("insertDesigner", dvo);
	}

	@Override
	public int updateDesigner(DesignerVO dvo) {
		return session.update("updateDesigner",dvo);
	}

	@Override
	public int deleteDesigner(int des_num) {
		return session.update("deleteDesigner",des_num);
	}

	@Override
	public int openDesigner(int des_num) {
		return session.update("openDesigner",des_num);
	}

	@Override
	public List<DesignerVO> designerAjaxList(int des_state) {
		return session.selectList("designerAjaxList", des_state);
	}

	@Override
	public List<DesignerVO> stylingDesigner(ReserveVo rvo) {
		return session.selectList("stylingDesigner",rvo);
	}


}
