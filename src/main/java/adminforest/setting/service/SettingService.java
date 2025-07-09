package adminforest.setting.service;

public interface SettingService {
	String getValue(String key);

	void setValue(String key, String value);

	String getDefaultPage();

	void setDefaultPage(String page);

	String getLandscapeType();

	void setLandscapeType(String type);
}