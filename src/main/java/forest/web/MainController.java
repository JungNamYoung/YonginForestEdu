
package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/forest/main")
	public String main() {
		return "forest/main";
	}
}
