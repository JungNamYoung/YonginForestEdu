package adminforest.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	@GetMapping("/main")
	public String main(HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/login";
		}
		return "adminforest/main";
	}
}
