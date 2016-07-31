package org.cw.service;

import java.util.List;

import org.cw.entity.Purview;



public interface PurviewService {

    List <Purview> findList();

    void save(Purview purview);

    Purview findPurviewById(Integer id);

    void update(Purview purview);

    void delete(Integer valueOf);

    


}
