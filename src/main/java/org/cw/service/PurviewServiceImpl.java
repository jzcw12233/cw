package org.cw.service;

import java.util.List;

import javax.annotation.Resource;

import org.cw.dao.PurviewDao;
import org.cw.entity.Purview;
import org.springframework.stereotype.Service;
@Service("purviewService")
public class PurviewServiceImpl implements PurviewService{
    @Resource
    private PurviewDao purviewDao;
    @Override
    public List<Purview> findList() {
        List<Purview> list = purviewDao.findList();
        return list;
    }
    @Override
    public void save(Purview purview) {
        purviewDao.save(purview);
    }
    @Override
    public Purview findPurviewById(Integer id) {
        
        return purviewDao.findpurviewById(id);
    }
    @Override
    public void update(Purview purview) {
        
        purviewDao.update(purview);
    }
    @Override
    public void delete(Integer id) {
        purviewDao.delete(id);
        
    }

}
