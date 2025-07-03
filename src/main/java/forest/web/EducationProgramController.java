package forest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EducationProgramController {

	@GetMapping("/forest/educationProgram")
	public String educationProgram() {
		
		return "forest/educationProgram";
	}
}
