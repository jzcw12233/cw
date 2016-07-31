package org.cw.web;

import java.sql.Savepoint;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.cw.entity.Purview;
import org.cw.entity.Role;
import org.cw.entity.RolePurview;
import org.cw.entity.User;
import org.cw.service.PurviewService;
import org.cw.service.RoleService;
import org.cw.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Resource
    private PurviewService purviewService;

    @Resource
    private RoleService roleService;

    @RequestMapping("/list")
    public String rolelist(Model model) {
        List<Role> list = roleService.findList();
        model.addAttribute("list", list);
        return "role/list";
    }

    @RequestMapping("/save")
    public String Save(Role role) {
        // Integer id = role.getId();
        // if (id != null && id>0) {
        // roleService.update(role);
        // }else{
        roleService.save(role);
        // }
        return "redirect:/role/list";

    }

    // //到后台根据id去删除
    // @RequestMapping("/SaveId")
    // public String SaverId(Role role){
    // Integer sid = role.getId();
    // if (sid == ) {
    //
    // }
    // return null;
    //
    // }

    @RequestMapping("/toSave")
    public String toSave(HttpServletRequest request, Model model) {
        String uiid = request.getParameter("id");
        if (uiid != null) {
            Integer id = Integer.valueOf(uiid);
            Role role = roleService.findRoleById(id);
            List<Integer> rolePurview = roleService.findRolePurviewList(id);
            //list转数组
            if (rolePurview != null && rolePurview.size() > 0) {
                role.setPurview(rolePurview.toArray(new Integer[rolePurview.size()]));
            }
            model.addAttribute("role", role);
        }
        // 到后台查询放人model中
        List<Purview> purviews = purviewService.findList();
        model.addAttribute("purviews", purviews);
        return "role/save";
    }

    @RequestMapping("findroleById")
    @ResponseBody
    public Map<String, Object> findRoleById(Integer id) {
        HashMap map = new HashMap<String, Object>();
        if (id != null) {
            Role role = roleService.findRoleById(id);
            map.put("role", role);
        }
        List<Purview> rlist = purviewService.findList();
        map.put("rlist", rlist);
        return map;

    }

    @RequestMapping("/delete")
    public String delete(HttpServletRequest request) {

        String id = request.getParameter("id");
        if (id != null && id != "") {
            roleService.delete(Integer.valueOf(id));

        }
        return "redirect:/role/list";

    }

}
