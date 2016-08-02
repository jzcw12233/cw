package org.cw.entity;

public class RolePurview {
private Integer rid;
private Integer pid;
public Integer getRid() {
    return rid;
}
public void setRid(Integer rid) {
    this.rid = rid;
}
public Integer getPid() {
    return pid;
}
public void setPid(Integer pid) {
    this.pid = pid;
}
@Override
public String toString() {
    return "role_purview [" + (rid != null ? "rid=" + rid + ", " : "") + (pid != null ? "pid=" + pid : "")
            + "]";
}
public RolePurview(Integer rid, Integer pid) {
    this.rid = rid;
    this.pid = pid;
}
public RolePurview() {
}
}
