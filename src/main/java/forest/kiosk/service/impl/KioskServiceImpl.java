package forest.kiosk.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import forest.kiosk.service.KioskService;
import forest.kiosk.vo.KioskCol;
import forest.kiosk.vo.KioskVo;

@Service("kioskService")
public class KioskServiceImpl implements KioskService{

        private static final Logger logger = LoggerFactory.getLogger(KioskServiceImpl.class);

	@Autowired
	SqlSessionTemplate sqlTemplateNuriview_yi;

        public List<KioskVo> selectKioskList(KioskCol kioskCol){
                logger.debug("selectKioskList called with {}", kioskCol);
                List<KioskVo> results = sqlTemplateNuriview_yi.selectList("selectKioskList", kioskCol);
                logger.debug("selectKioskList returned {} result(s)", results != null ? results.size() : 0);
                return results;
        }

        public int insertKiosk(KioskCol kioskCol){
                logger.debug("insertKiosk called with {}", kioskCol);
                int count = sqlTemplateNuriview_yi.insert("insertKiosk", kioskCol);
                logger.debug("insertKiosk inserted {} record(s)", count);
                return count;
        }

        public int updateKiosk(KioskCol kioskCol){
                logger.debug("updateKiosk called with {}", kioskCol);
                int count = sqlTemplateNuriview_yi.update("updateKiosk", kioskCol);
                logger.debug("updateKiosk updated {} record(s)", count);
                return count;
        }

        public int deleteKiosk(KioskCol kioskCol){
                logger.debug("deleteKiosk called with {}", kioskCol);
                int count = sqlTemplateNuriview_yi.delete("deleteKiosk", kioskCol);
                logger.debug("deleteKiosk deleted {} record(s)", count);
                return count;
        }

}
