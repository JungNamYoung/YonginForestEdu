package adminforest.log.service;

import java.util.Date;
import java.util.List;

import adminforest.log.vo.RequestStatVo;

public interface RequestStatService {
	List<RequestStatVo> selectStats(Date from, Date to);
}