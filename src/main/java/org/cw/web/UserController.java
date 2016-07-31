package org.cw.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.http.HttpRequest;
import org.cw.entity.Role;
import org.cw.entity.User;
import org.cw.service.RoleService;
import org.cw.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

@Controller
@RequestMapping("/user")
public class UserController {
    private  static final String pwd="123456";
    @Resource
    private RoleService roleService;

    @Resource
    private UserService userService;

    @RequestMapping("/list")
    public String list(Model model) {
        List<User> list = userService.findList();
        model.addAttribute("list", list);
        return "user/list";
    }

    @RequestMapping("/save")
    public String save(User user) {
        Integer id = user.getId();
        if (id != null && id > 0) {
            userService.update(user);
        } else {
             
            user.setPassword(getmd5(pwd));
            userService.save(user);
        }
        return "redirect:/user/list ";
    }

    /*
     * @RequestMapping(value="/save" ) public String save( HttpServletRequest request){
     * System.out.println(""); Integer role_id = Integer.valueOf(request.getParameter("role_id"));
     * String username = request.getParameter("username"); String sex = request.getParameter("sex");
     * String path = request.getParameter("path"); String phone = request.getParameter("phone");
     * String password = request.getParameter("password"); User user = new User();
     * user.setRole_id(role_id); user.setSex(sex); user.setPath(path); user.setUsername(username);
     * user.setPassword(password); user.setPhone(phone); userService.save(user); return
     * "redirect:/user/list "; }
     */
    /*
     * @RequestMapping("/update") public String update(HttpServletRequest request){ Integer id =
     * Integer.valueOf(request.getParameter("id")); Integer role_id =
     * Integer.valueOf(request.getParameter("role_id")); String sex = request.getParameter("sex");
     * String path = request.getParameter("patn"); String phone = request.getParameter("phone");
     * String username = request.getParameter("username"); String password =
     * request.getParameter("password"); User user = new User(); user.setId(id); user.setSex(sex);
     * user.setPath(path); user.setUsername(username); user.setPassword(password);
     * user.setPhone(phone); userService.update(user); return "redirect:/user/list "; }
     */
    @RequestMapping("/toSave")
    public String toSave(HttpServletRequest request, Model model) {
//        String uid = request.getParameter("id");
//        if (uid != null) {
//            Integer id = Integer.valueOf(uid);
//            User user = userService.findUserById(id);
//            model.addAttribute("user", user);
//        }
//        List<Role> rlist = roleService.findList();
//        model.addAttribute("rlist", rlist);
        return "user/save";
    }
    
    @RequestMapping("findUserById")
    @ResponseBody
    public Map<String, Object> findUserById(Integer id) {
        Map map=new HashMap<String, Object>();
        if (id != null) {
            User user = userService.findUserById(id);
            map.put("user", user);
        }
        List<Role> rlist = roleService.findList();
        map.put("rlist", rlist);
        return map;

    }

    // s删除
    @RequestMapping("/delete")
    public String delete(HttpServletRequest request) {

        String id = request.getParameter("id");

        userService.delete(Integer.valueOf(id));
        return "redirect:/user/list";
    }
 private  String getmd5(String pwd) {
     String md5 = DigestUtils.md5Hex(pwd);
    return md5;
   
   
}
}
