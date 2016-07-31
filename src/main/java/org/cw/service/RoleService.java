package org.cw.service;

import java.util.List;

import org.cw.entity.Role;
import org.cw.entity.RolePurview;

public interface RoleService {

    List<Role> findList();
    void save (Role role); 
    Role findRoleById(int id);
    void delete(int id);
    List<Integer> findRolePurviewList(Integer rid);
}
