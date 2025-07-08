package adminforest.setting.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.setting.service.SettingService;
import cuda.web.define.Define;

@Controller
public class SettingController {

	private final SettingService settingService;

	public SettingController(SettingService settingService) {
		this.settingService = settingService;
	}

	@GetMapping("/admin/main-page")
	public String showForm(Model model) {
		model.addAttribute("defaultPage", settingService.getDefaultPage());
		return "adminforest/mainPage";
	}

	@PostMapping("/admin/main-page")
	public String update(@RequestParam("page") String page) {
		settingService.setDefaultPage(page);
		return Define.REDIRECT + "/admin/main-page";
	}
}