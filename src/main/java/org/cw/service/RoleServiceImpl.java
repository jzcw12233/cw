package org.cw.service;

import java.util.List;

import javax.annotation.Resource;

import org.cw.dao.RoleDao;
import org.cw.entity.Role;
import org.cw.entity.RolePurview;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("roleService")
public class RoleServiceImpl implements RoleService {
   @Resource
    private RoleDao roleDao;

@Override
public List<Role> findList() {
   List<Role> list = roleDao.findList();
    return list;
}

@Override
@Transactional
public void save(Role role) {
    Integer id = role.getId();
    
  if (id != null && id>0) {
      
      roleDao.update(role);
  }else{
     roleDao.save(role);
     id=role.getId();
     
  }  
  ///
  roleDao.deletePurviewByRoleId(id);
   Integer[] pids = role.getPurview();
  for (Integer pid : pids) {
    roleDao.saveRoleandPurview(id, pid);
}
  ////
  
}
      @Override 
    public void delete(int id){
        roleDao.delete(id);
    }
      @Override
  public Role findRoleById(int id){
      return roleDao.findRoleById(id);
  }
//  @Override
//public void update(Role role){
//      roleDao.update(role);
//  }
      @Override
    public List<Integer> findRolePurviewList(Integer rid) {
        
        return roleDao.findRolePurviewList(rid);
    }
}
