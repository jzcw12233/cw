package org.cw.service;

import java.util.List;

import org.cw.entity.Role;
import org.cw.entity.User;

public interface UserService {
    List<User> findList();

    void save(User user);

    User findUserById(int id);
    void update(User user);
    void delete(int id);

    
}
