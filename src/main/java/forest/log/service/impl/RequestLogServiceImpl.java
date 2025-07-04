package forest.log.service.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forest.log.service.RequestLogService;
import forest.log.vo.RequestLogVo;

@Service("requestLogService")
public class RequestLogServiceImpl implements RequestLogService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int insert(RequestLogVo log) {
		return sqlSessionTemplate.insert("insertRequestLog", log);
	}
}