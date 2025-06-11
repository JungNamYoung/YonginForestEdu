package forest.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import forest.user.service.UserService;
import forest.user.vo.UserVo;

@Controller
public class RegisterController {

    @Autowired
    UserService userService;

    @GetMapping("/register")
    public String registerForm() {
        return "forest/register";
    }

    @PostMapping("/register")
    public String register(UserVo user, Model model) {
        try {
            user.setRole("USER");
            user.setEnabled(true);
            userService.register(user);
            return "redirect:/login";
        } catch (Exception e) {
            model.addAttribute("error", "Registration failed");
            return "forest/register";
        }
    }
}
