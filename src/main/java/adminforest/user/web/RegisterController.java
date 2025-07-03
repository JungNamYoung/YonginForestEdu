package adminforest.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import adminforest.user.service.UserService;
import adminforest.user.vo.UserVo;

@Controller
public class RegisterController {

    @Autowired
    UserService userService;

    @GetMapping("/admin/register")
    public String registerForm() {
        return "adminforest/register";
    }

    @PostMapping("/admin/register")
    public String register(UserVo user, Model model) {
        try {
            user.setRole("USER");
            user.setEnabled(true);
            userService.register(user);
            //return "redirect:/login";
            return "redirect:/admin/register";
        } catch (Exception e) {
            model.addAttribute("error", "Registration failed");
            return "adminforest/register";
        }
    }
}
