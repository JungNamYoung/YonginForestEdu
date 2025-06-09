package forest.kiosk.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forest.kiosk.service.KioskService;
import forest.kiosk.vo.KioskCol;
import forest.kiosk.vo.KioskVo;

@Service("kioskService")
public class KioskServiceImpl implements KioskService{

	@Autowired
	SqlSessionTemplate sqlTemplateNuriview_yi;

	public List<KioskVo> selectKioskList(KioskCol kioskCol){
		return sqlTemplateNuriview_yi.selectList("selectKioskList", kioskCol);
	}

	public int insertKiosk(KioskCol kioskCol){
		return sqlTemplateNuriview_yi.insert("insertKiosk", kioskCol);
	}

	public int updateKiosk(KioskCol kioskCol){
		return sqlTemplateNuriview_yi.update("updateKiosk", kioskCol);
	}

	public int deleteKiosk(KioskCol kioskCol){
		return sqlTemplateNuriview_yi.delete("deleteKiosk", kioskCol);
	}

}
