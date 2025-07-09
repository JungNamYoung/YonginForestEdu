package adminforest.setting.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminforest.define.AdminForest;
import adminforest.setting.service.SettingService;

@Service("settingService")
public class SettingServiceImpl implements SettingService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public String getValue(String key) {
		return sqlSessionTemplate.selectOne("selectSetting", key);
	}

	@Override
	public void setValue(String key, String value) {
		Map<String, Object> param = new HashMap<>();
		param.put("settingKey", key);
		param.put("settingValue", value);
		int updated = sqlSessionTemplate.update("updateSetting", param);
		if (updated == 0) {
			sqlSessionTemplate.insert("insertSetting", param);
		}
	}

	@Override
	public String getDefaultPage() {
		String page = getValue(AdminForest.DEFAUT_PAGE);
		return (page != null && page.length() > 0) ? page : "/forest/landscape";
	}

	@Override
	public void setDefaultPage(String page) {
		setValue(AdminForest.DEFAUT_PAGE, page);
	}

	@Override
	public String getLandscapeType() {
		String type = getValue(AdminForest.IMAGES);
		return (type != null && !type.isBlank()) ? type : "images-rolling";
	}

	@Override
	public void setLandscapeType(String type) {
		setValue(AdminForest.IMAGES, type);
	}
}