package org.cw.web;

import java.sql.Savepoint;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.cw.entity.Purview;
import org.cw.entity.Role;
import org.cw.entity.User;
import org.cw.service.PurviewService;
import org.cw.service.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/purview")
public class PurviewController {
    @Resource
    private PurviewService purviewService;
    @Resource
    private RoleService roleService;
    @RequestMapping("/list")
    public String list(Model model){
       List <Purview> list = purviewService.findList();
       model.addAttribute("list", list);
        return "purview/list";
        
    }
    @RequestMapping("/save")
    public String Savepoint(Purview purview){
       Integer id = purview.getId();
       if (id != null && id>0) {
        purviewService.update(purview);
    }else {
        purviewService.save(purview);
    }
        return "redirect:/purview/list";
        
    }
   /* @RequestMapping("/save")
    public String save(HttpServletRequest request){
        String url = request.getParameter("url");
        String purviewname = request.getParameter("purviewname");
        String purviewpicture = request.getParameter("purviewpicture");
        Purview purview = new Purview();
        purview.setUrl(url);
        purview.setPurviewname(purviewname);
        purview.setPurviewpicture(purviewpicture);
        purviewService.save(purview);
        return "redirect:/Purview/list";
        
        }*/
    @RequestMapping("/toSave")
    public String toSave(HttpServletRequest request,Model model){
        String pid = request.getParameter("id");
       if(pid != null){
           Integer id = Integer.valueOf(pid);
            Purview purview =  purviewService.findPurviewById(id);
            model.addAttribute("purview", purview);
        }
        return "purview/save";
        
    }
    /*@RequestMapping("/update")
    public String update(HttpServletRequest request){
        Integer id = Integer.valueOf(request.getParameter("id"));
        String url = request.getParameter("url");
        String purviewname = request.getParameter("purviewname");
        String purviewpicture = request.getParameter("purviewpicture");
        Purview purview = new Purview();
        purview.setId(id);
        purview.setUrl(url);
        purview.setPurviewname(purviewname);
        purview.setPurviewpicture(purviewpicture);
        purviewService.update(purview); 
        return "redirect:/purview/list "; 
    }*/
    
    @RequestMapping("/delete")
    public String delete(HttpServletRequest request){
        
        String id = request.getParameter("id");
       
    
        purviewService.delete(Integer.valueOf(id)); 
         return "redirect:/purview/list"; 
    }
    
}
