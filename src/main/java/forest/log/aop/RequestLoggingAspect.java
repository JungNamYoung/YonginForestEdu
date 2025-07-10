package forest.log.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import forest.log.service.RequestLogService;
import forest.log.vo.RequestLogVo;

import jakarta.servlet.http.HttpServletRequest;

@Aspect
@Component
public class RequestLoggingAspect {
	@Autowired
	RequestLogService requestLogService;

	@Before("within(forest.web..*) && ( @annotation(org.springframework.web.bind.annotation.GetMapping) || " + "@annotation(org.springframework.web.bind.annotation.PostMapping) || " + "@annotation(org.springframework.web.bind.annotation.RequestMapping) || " + "@annotation(org.springframework.web.bind.annotation.PutMapping) || " + "@annotation(org.springframework.web.bind.annotation.DeleteMapping))")
	public void log(JoinPoint joinPoint) {
		ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		String uri = "";
		
		if (attrs != null) {
			HttpServletRequest req = attrs.getRequest();
			uri = req.getRequestURI();
		}

		RequestLogVo log = new RequestLogVo();
//		log.setController(joinPoint.getTarget().getClass().getSimpleName());
//		log.setMethod(joinPoint.getSignature().getName());
		log.setUri(uri);
		requestLogService.insert(log);
	}
}