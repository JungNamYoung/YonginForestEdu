package forest.kiosk.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forest.kiosk.service.KioskService;

@Controller
public class KioskController {

	@Autowired
	KioskService kioskService;

	@RequestMapping(value="/nuriview_yi/selectKiosk.do")
	public String selectKiosk(Model model){
		
		model.addAttribute("results", kioskService.selectKioskList(null));
		return "kiosk";
	}
}

