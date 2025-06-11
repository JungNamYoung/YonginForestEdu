package forest.user.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import forest.user.service.UserService;
import forest.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public UserVo login(String username, String password) {
        logger.debug("login called for user '{}'", username);
        Map<String, Object> param = new HashMap<>();
        param.put("username", username);
        param.put("password", password);
        UserVo user = sqlSessionTemplate.selectOne("selectUserByUsernameAndPassword", param);
        if(user != null) {
             user.setPassword(null);
        }
        logger.debug("login query returned {}", user != null ? "a user" : "null");
        return user;
    }
}