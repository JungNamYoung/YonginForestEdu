package forest.user.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forest.user.service.UserService;
import forest.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public UserVo login(String username, String password) {
        Map<String, Object> param = new HashMap<>();
        param.put("username", username);
        param.put("password", password);
        return sqlSessionTemplate.selectOne("selectUserByUsernameAndPassword", param);
    }
}