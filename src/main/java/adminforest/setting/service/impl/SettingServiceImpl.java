package adminforest.setting.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import adminforest.define.AdminForest;
import adminforest.setting.service.SettingService;
import cuda.web.util.FileEx;
import cuda.web.util.TokenEx;
import cuda.web.util.Util;

@Service("settingService")
public class SettingServiceImpl implements SettingService {

	@Override
	public String getDefaultPage() {
				
		TokenEx tokenEx = new TokenEx(Util.dirResources(AdminForest.DEFAUT_PAGE_FILE));		
		
		String page = tokenEx.get(AdminForest.DEFAUT_PAGE);
		
		if (page.length() > 0) {
			return page;
		}
		
		return "/forest/index";
	}

	@Override
	public void setDefaultPage(String page) {
		String path = Util.dirResources(AdminForest.DEFAUT_PAGE_FILE);

		List<String> list = new ArrayList<>();
		list.add(AdminForest.DEFAUT_PAGE + "=" + page);
		
		FileEx.writeFile(path, list);
	}
}