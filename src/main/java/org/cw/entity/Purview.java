package org.cw.entity;

public class Purview {
private Integer id;
private Integer pid;    
private String url;
private String purviewname;
private String purviewpicture;

public Integer getPid() {
    return pid;
}
public void setPid(Integer pid) {
    this.pid = pid;
}
public Integer getId() {
    return id;
}
public void setId(Integer id) {
    this.id = id;
}

 
public String getUrl() {
    return url;
}
/**
 * @param url the url to set
 */
public void setUrl(String url) {
    this.url = url;
}
/**
 * @return the purviewname
 */
public String getPurviewname() {
    return purviewname;
}
/**
 * @param purviewname the purviewname to set
 */
public void setPurviewname(String purviewname) {
    this.purviewname = purviewname;
}
/**
 * @return the purviewpicture
 */
public String getPurviewpicture() {
    return purviewpicture;
}
/**
 * @param purviewpicture the purviewpicture to set
 */
public void setPurviewpicture(String purviewpicture) {
    this.purviewpicture = purviewpicture;
}
/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
    return "Purview [" + (id != null ? "id=" + id + ", " : "") + (pid != null ? "pid=" + pid + ", " : "")
            + (url != null ? "url=" + url + ", " : "")
            + (purviewname != null ? "purviewname=" + purviewname + ", " : "")
            + (purviewpicture != null ? "purviewpicture=" + purviewpicture : "") + "]";
}
public Purview(Integer id, Integer pid, String url, String purviewname, String purviewpicture) {
    this.id = id;
    this.pid = pid;
    this.url = url;
    this.purviewname = purviewname;
    this.purviewpicture = purviewpicture;
}
public Purview() {
}

}
