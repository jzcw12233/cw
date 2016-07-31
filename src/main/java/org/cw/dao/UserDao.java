package org.cw.dao;

import java.util.List;

import org.cw.entity.User;


public interface UserDao {
  List<User> findList() ;
  void save(User user);
  void delete(int id);
  User findUserById(int id);
  void update(User user);
  
}
