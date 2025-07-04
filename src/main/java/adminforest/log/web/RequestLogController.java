package adminforest.log.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.log.service.RequestStatService;
import adminforest.log.vo.RequestStatVo;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class RequestLogController {
	@Autowired
	RequestStatService requestStatService;

	private Date parse(String s) throws ParseException {
		return new SimpleDateFormat("yyyy-MM-dd").parse(s);
	}

	@GetMapping("/admin/logs")
	public String list(@RequestParam(required = false) String from, @RequestParam(required = false) String to, Model model, HttpSession session) throws ParseException {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		Date fromDate = from == null ? new Date(System.currentTimeMillis() - 7L * 24 * 3600 * 1000) : parse(from);
		Date toDate = to == null ? new Date() : parse(to);
		List<RequestStatVo> list = requestStatService.selectStats(fromDate, toDate);
		model.addAttribute("stats", list);
		model.addAttribute("from", new SimpleDateFormat("yyyy-MM-dd").format(fromDate));
		model.addAttribute("to", new SimpleDateFormat("yyyy-MM-dd").format(toDate));
		return "adminforest/requestLog";
	}

	@GetMapping("/admin/logs/excel")
	public void excel(@RequestParam String from, @RequestParam String to, HttpServletResponse response) throws ParseException, IOException {
		Date fromDate = parse(from);
		Date toDate = parse(to);
		List<RequestStatVo> list = requestStatService.selectStats(fromDate, toDate);
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=logs.csv");
		PrintWriter out = response.getWriter();
		out.println("Controller,Method,Name, Count");
		for (RequestStatVo vo : list) {
			out.printf("%s, %s, %s, %d \n", vo.getController(), vo.getMethod(), vo.getNameText() == null ? "" : vo.getNameText(), vo.getCount() == null ? 0 : vo.getCount());
		}
		out.flush();
	}
}
