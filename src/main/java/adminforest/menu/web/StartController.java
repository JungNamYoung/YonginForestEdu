package adminforest.menu.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.define.AdminForest;
import adminforest.menu.service.SettingService;
import cuda.web.define.Define;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class StartController {

	private final SettingService settingService;
	private final ServletContext servletContext;

	public StartController(SettingService settingService, ServletContext servletContext) {
		this.settingService = settingService;
		this.servletContext = servletContext;
	}

	@GetMapping("/admin/start-page")
	public String showForm(Model model) {

		model.addAttribute("startPage", settingService.getDefaultPage());
		model.addAttribute("landScapeImages", settingService.getLandscapeType());

		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_LANDSCAPE);

		model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);

		listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_PORTRAIT);
		model.addAttribute(AdminForest.PORTRAIT_VO, listFileVo);

		return "adminforest/start-page";
	}

	@PostMapping("/admin/start-page")
	public String update(@RequestParam("page") String page) {

		settingService.setDefaultPage(page);

		return Define.REDIRECT + "/admin/start-page";
	}

	@PostMapping("/admin/landscape-image")
	public String updateImageType(@RequestParam("landScapeImages") String type) {
		
		settingService.setLandscapeType(type);
		
		return Define.REDIRECT + "/admin/start-page";
	}
}