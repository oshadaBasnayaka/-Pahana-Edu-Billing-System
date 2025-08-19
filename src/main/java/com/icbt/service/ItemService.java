package com.icbt.service;

import java.sql.SQLException;
import java.util.List;

import com.icbt.dao.ItemDao;
import com.icbt.model.Item;

public class ItemService {

    private ItemDao itemDao = new ItemDao();

    public void addItem(Item item) throws SQLException {
        itemDao.addItem(item);
    }

    public List<Item> getAllItems() throws SQLException {
        return itemDao.getAllItems();
    }

    public Item getItemById(int id) throws SQLException {
        return itemDao.getItemById(id);
    }

    public void updateItem(Item item) throws SQLException {
        itemDao.updateItem(item);
    }

    public void deleteItem(int id) throws SQLException {
        itemDao.deleteItem(id);
    }

	public Item getItem(int bookid) {
		// TODO Auto-generated method stub
		return null;
	}
}
