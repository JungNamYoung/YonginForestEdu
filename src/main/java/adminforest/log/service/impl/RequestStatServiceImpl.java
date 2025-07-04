package adminforest.log.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminforest.log.service.RequestStatService;
import adminforest.log.vo.RequestStatVo;

@Service("requestStatService")
public class RequestStatServiceImpl implements RequestStatService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<RequestStatVo> selectStats(Date from, Date to) {
		
		Map<String, Object> param = new HashMap<>();
		param.put("from", from);
		param.put("to", to);
		
		return sqlSessionTemplate.selectList("selectRequestLogStats", param);
	}
}