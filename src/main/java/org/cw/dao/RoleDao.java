package org.cw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.cw.entity.Role;
import org.cw.entity.RolePurview;



public interface RoleDao {
List<Role> findList();
Integer save (Role role);

void delete(int id);
Role findRoleById(int id);
void update(Role role);
void deletePurviewByRoleId( Integer id);
//多个参数的情况下加@param
void saveRoleandPurview(@Param ("rid")Integer roleId, @Param("pid")Integer purviewId);
 List<Integer> findRolePurviewList(Integer rid);
}
