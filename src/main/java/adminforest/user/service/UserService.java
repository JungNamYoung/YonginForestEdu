package adminforest.user.service;

import adminforest.user.vo.UserVo;

public interface UserService {
    UserVo login(String username, String password);
    int register(UserVo user);
    java.util.List<UserVo> selectUserList(int offset, int limit);
    int countUsers();
}