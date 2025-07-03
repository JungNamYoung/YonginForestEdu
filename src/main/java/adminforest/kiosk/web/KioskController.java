package adminforest.kiosk.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import adminforest.kiosk.service.KioskService;
import jakarta.servlet.http.HttpSession;

@Controller
public class KioskController {

	private static final Logger logger = LoggerFactory.getLogger(KioskController.class);

	@Autowired
	KioskService kioskService;

	@GetMapping("/admin/kiosk")
	public String selectKiosk(Model model, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		logger.info("Fetching kiosk list");
		model.addAttribute("results", kioskService.selectKioskList(null));
		logger.info("Kiosk list view returned");

		return "adminforest/kiosk";
	}
}
