package org.cw.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.cw.entity.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class RoleDaoTest {
    @Resource
    private   RoleDao roleDao;
    @Test
    public void testFindList() {
      List<Role> list = roleDao.findList();
      System.out.println(list);
    }

}
