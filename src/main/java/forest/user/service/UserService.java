package forest.user.service;

import forest.user.vo.UserVo;

public interface UserService {
    UserVo login(String username, String password);
    int register(UserVo user);
    java.util.List<UserVo> selectUserList(int offset, int limit);
    int countUsers();
}