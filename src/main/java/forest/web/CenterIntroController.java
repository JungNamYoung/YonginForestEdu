package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CenterIntroController {
	
	@GetMapping("/forest/centerIntro")
	public String centerIntro() {
		
		return "forest/centerIntro";
	}

}
