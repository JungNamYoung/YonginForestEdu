package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FloorGuideController {
	@GetMapping("/forest/floorGuide")
	public String floorGuide() {
		return "forest/floorGuide";
	}
}
