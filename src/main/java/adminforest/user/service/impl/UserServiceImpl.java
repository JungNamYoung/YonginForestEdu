package adminforest.user.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminforest.user.service.UserService;
import adminforest.user.vo.UserVo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

    @Override
    public int register(UserVo user) {
        logger.debug("register called for user '{}'", user.getUsername());
        return sqlSessionTemplate.insert("insertUser", user);
    }

    @Override
    public java.util.List<UserVo> selectUserList(int offset, int limit) {
        Map<String, Object> param = new HashMap<>();
        param.put("offset", offset);
        param.put("limit", limit);
        return sqlSessionTemplate.selectList("selectUserList", param);
    }

    @Override
    public int countUsers() {
        Integer cnt = sqlSessionTemplate.selectOne("countUsers");
        return cnt == null ? 0 : cnt;
    }
}