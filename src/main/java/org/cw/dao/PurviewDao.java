package org.cw.dao;


import java.util.List;

import org.cw.entity.Purview;

public interface PurviewDao {

    public List<Purview> findList() ;

    public void save(Purview purview);

    public Purview findpurviewById(int id);

    public void update(Purview purview);
   public void delete(int id);
    

   

}
