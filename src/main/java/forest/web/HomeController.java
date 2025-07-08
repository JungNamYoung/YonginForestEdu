package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import adminforest.setting.service.SettingService;

@Controller
public class HomeController {
	private final SettingService settingService;

	public HomeController(SettingService settingService) {
		this.settingService = settingService;
	}

	@GetMapping("/forest/home")
	public String home() {
		String page = settingService.getDefaultPage();
		return "redirect:" + page;
	}
}
