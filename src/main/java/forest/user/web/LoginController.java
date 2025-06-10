package forest.user.web;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import forest.user.service.UserService;
import forest.user.vo.UserVo;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserService userService;

	@GetMapping("/login")
	public String loginForm() {
		return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) {
		logger.info("Attempting login for user {}", username);
		UserVo user = userService.login(username, password);
		if (user != null && Boolean.TRUE.equals(user.getEnabled())) {
			session.setAttribute("loginUser", user);
			logger.info("User {} logged in", username);
			return "redirect:/kiosk";
		}
		logger.warn("Login failed for user {}", username);
		model.addAttribute("error", "Invalid credentials");
		return "login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		logger.info("Logging out current user");
		session.invalidate();
		return "redirect:/login";
	}

}