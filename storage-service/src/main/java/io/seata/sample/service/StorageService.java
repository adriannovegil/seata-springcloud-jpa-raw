package io.seata.sample.service;

import io.seata.sample.entity.Storage;
import io.seata.sample.repository.StorageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StorageService {

    @Autowired
    private StorageDAO storageDAO;

    @Transactional
    public void deduct(String commodityCode, int count) {
        Storage storage = storageDAO.findByCommodityCode(commodityCode);
        storage.setCount(storage.getCount() - count);

        storageDAO.save(storage);
    }
}
