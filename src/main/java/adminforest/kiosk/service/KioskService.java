package adminforest.kiosk.service;

import java.util.List;

import adminforest.kiosk.vo.KioskCol;
import adminforest.kiosk.vo.KioskVo;

public interface KioskService {
	public List<KioskVo> selectKioskList(KioskCol kioskCol);
	public int insertKiosk(KioskCol kioskCol);
	public int updateKiosk(KioskCol kioskCol);
	public int deleteKiosk(KioskCol kioskCol);
}
