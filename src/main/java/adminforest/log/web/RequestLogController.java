package adminforest.log.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import adminforest.log.service.RequestStatService;
import adminforest.log.vo.RequestStatVo;
import cuda.web.define.Define;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class RequestLogController {

	@Autowired
	RequestStatService requestStatService;

	private Date startOfDay(Date d) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal.getTime();
	}

	private Date endOfDay(Date d) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.set(Calendar.HOUR_OF_DAY, 23);
		cal.set(Calendar.MINUTE, 59);
		cal.set(Calendar.SECOND, 59);
		cal.set(Calendar.MILLISECOND, 999);
		return cal.getTime();
	}

	private Date parseStartOfDay(String s) throws ParseException {
		return startOfDay(new SimpleDateFormat(Define.YMD).parse(s));
	}

	private Date parseEndOfDay(String s) throws ParseException {
		return endOfDay(new SimpleDateFormat(Define.YMD).parse(s));
	}

	@GetMapping("/admin/logs")
	public String list(@RequestParam(name = "from", required = false) String from, @RequestParam(name = "to", required = false) String to, Model model) throws ParseException {

		Date fromDate = from == null ? startOfDay(new Date(System.currentTimeMillis() - 7L * 24 * 3600 * 1000)) : parseStartOfDay(from);
		Date toDate = to == null ? endOfDay(new Date()) : parseEndOfDay(to);

		List<RequestStatVo> list = requestStatService.selectStats(fromDate, toDate);

		model.addAttribute("stats", list);
		model.addAttribute("from", new SimpleDateFormat(Define.YMD).format(fromDate));
		model.addAttribute("to", new SimpleDateFormat(Define.YMD).format(toDate));

		return "adminforest/request-log";
	}

	@GetMapping("/admin/logs/excel")
	public void excel(@RequestParam(name = "from") String from, @RequestParam(name = "to") String to, HttpServletResponse response) throws ParseException, IOException {

		Date fromDate = parseStartOfDay(from);
		Date toDate = parseEndOfDay(to);

		List<RequestStatVo> list = requestStatService.selectStats(fromDate, toDate);

		response.setCharacterEncoding("MS949");
		response.setContentType("application/vnd.ms-excel; charset=MS949");
		response.setHeader("Content-Disposition", "attachment;filename=logs.csv");

		PrintWriter out = response.getWriter();
		out.println("Controller,Method,Name, Count");

		for (RequestStatVo vo : list) {
			out.printf("%s, %s, %s, %d \r\n", vo.getController(), vo.getMethod(), vo.getNameText() == null ? "" : vo.getNameText(), vo.getCount() == null ? 0 : vo.getCount());
		}

		out.flush();
	}
}
