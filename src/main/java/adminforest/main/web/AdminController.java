package adminforest.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpSession;

//@Controller
//public class AdminController {
//
//	@GetMapping("/admin")
//	public String main(HttpSession session) {
//		if (session.getAttribute("loginUser") == null) {
//			return "redirect:/admin/login";
//		}
//		return "adminforest/admin";
//	}
//}
