package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {

	@GetMapping("/forest/event")
	public String Event() {
		
		return "forest/event";
	}
}
