package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FacilityGuideController {

	@GetMapping("/forest/facilityGuide")
	public String facilityGuide() {
		return "forest/facilityGuide";
	}
}
