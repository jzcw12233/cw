package org.cw.service;

import java.util.List;

import javax.annotation.Resource;

import org.cw.dao.UserDao;
import org.cw.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
@Service("userService")
public class UserServiceImpl implements UserService {
   
   @Resource 
   private UserDao userDao;
    @Override
    public List<User> findList() {
        List<User> list = userDao.findList();
        
        return list;
    }
    
    @Override
    public void save(User user) {
        userDao.save(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public User findUserById(int id) {
        return userDao.findUserById(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
        
    }

    @Override
    public Integer login(User user) {
        return  userDao.login(user);
    }



    
}
