package forest.user.service;

import forest.user.vo.UserVo;

public interface UserService {
    UserVo login(String username, String password);
}
