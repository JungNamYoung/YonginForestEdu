package forest.kiosk.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import forest.kiosk.service.KioskService;

@Controller
public class KioskController {

	private static final Logger logger = LoggerFactory.getLogger(KioskController.class);

	@Autowired
	KioskService kioskService;

	@RequestMapping(value = "/kiosk")
	public String selectKiosk(Model model) {

		logger.info("Fetching kiosk list");
		model.addAttribute("results", kioskService.selectKioskList(null));
		logger.info("Kiosk list view returned");

		return "kiosk";
	}
}
