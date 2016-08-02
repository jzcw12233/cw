package org.cw.entity;

import java.util.Date;
import java.util.List;


public class Role {
private Integer id;
private String rolename;
private Date createtime;
private String roledesc;
private Integer[] purview;



public Integer[] getPurview() {
    return purview;
}
public void setPurview(Integer[] purview) {
    this.purview = purview;
}
public Integer getId() {
    return id;
}
public void setId(Integer id) {
    this.id = id;
}

/**
 * @return the rolename
 */
public String getRolename() {
    return rolename;
}
/**
 * @param rolename the rolename to set
 */
public void setRolename(String rolename) {
    this.rolename = rolename;
}
/**
 * @return the createtime
 */
public Date getCreatetime() {
    return createtime;
}
/**
 * @param createtime the createtime to set
 */
public void setCreatetime(Date createtime) {
    this.createtime = createtime;
}
/**
 * @return the roledesc
 */
public String getRoledesc() {
    return roledesc;
}
/**
 * @param roledesc the roledesc to set
 */
public void setRoledesc(String roledesc) {
    this.roledesc = roledesc;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
    return "Role [id=" + id + ", " + (rolename != null ? "rolename=" + rolename + ", " : "")
            + (createtime != null ? "createtime=" + createtime + ", " : "")
            + (roledesc != null ? "roledesc=" + roledesc : "") + "]";
}
public Role( String rolename, Date createtime, String roledesc) {
    this.rolename = rolename;
    this.createtime = createtime;
    this.roledesc = roledesc;
}
public Role() {
}
}
