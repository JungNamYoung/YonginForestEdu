package adminforest.dashboard.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashBoardController {

	@GetMapping("/admin/dashboard")
	public String dashBoard(Model model, HttpSession session) {
		return "adminforest/dashBoard";
	}
}