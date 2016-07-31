package org.cw.entity;

public class PolePurview {
private Integer sid;
private Integer pid;
public Integer getSid() {
    return sid;
}
public void setSid(Integer sid) {
    this.sid = sid;
}
public Integer getPid() {
    return pid;
}
public void setPid(Integer pid) {
    this.pid = pid;
}
@Override
public String toString() {
    return "Polepurview [" + (sid != null ? "sid=" + sid + ", " : "") + (pid != null ? "pid=" + pid : "")
            + "]";
}
public PolePurview(Integer sid, Integer pid) {
    this.sid = sid;
    this.pid = pid;
}
public PolePurview() {
}

}
