package adminforest.user.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.user.service.UserService;
import adminforest.user.vo.UserVo;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/admin/users")
    public String list(@RequestParam(name = "page", defaultValue = "1") int page,
                       Model model, HttpSession session) {
        if (session.getAttribute("loginUser") == null) {
            return "redirect:/admin/login";
        }
        int pageSize = 10;
        int offset = (page - 1) * pageSize;
        List<UserVo> users = userService.selectUserList(offset, pageSize);
        int total = userService.countUsers();
        int totalPages = (int) Math.ceil((double) total / pageSize);

        model.addAttribute("users", users);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        return "adminforest/user";
    }
}
