package adminforest.user.web;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.user.service.UserService;
import adminforest.user.vo.UserVo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserService userService;
	
	@GetMapping("/admin/login")
	public String loginForm(HttpSession session) {
		
		if (session.getAttribute("loginUser") != null) {
			return "redirect:/admin/dashboard";
		}
		
		return "adminforest/login";
	}

	@PostMapping("/admin/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session, Model model) {
		logger.info("Attempting login for user {}", username);
		UserVo user = userService.login(username, password);
		if (user != null && Boolean.TRUE.equals(user.getEnabled())) {
			session.setAttribute("loginUser", user);
			session.setMaxInactiveInterval(30 * 60); // 30 minutes
			logger.info("User {} logged in", username);
			return "redirect:/admin/dashboard";
		}
		logger.warn("Login failed for user {}", username);
		model.addAttribute("error", "Invalid credentials");
		return "adminforest/login";
	}

	@GetMapping("/admin/logout")
	public String logout(HttpSession session) {
		logger.info("Logging out current user");
		session.invalidate();
		return "redirect:/admin/login";
	}

}