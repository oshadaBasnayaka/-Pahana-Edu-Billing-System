package com.icbt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.icbt.model.Item;

public class ItemDao {

    public void addItem(Item item) {
        String sql = "INSERT INTO item (bookname, price, author) VALUES (?, ?, ?)";
        try {
        	Connection con = DBConnectionFactory.getConnection();
     
             PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, item.getBookname());
            ps.setDouble(2, item.getPrice());
            ps.setString(3, item.getAuthor());
            ps.executeUpdate();
            System.out.println("Item Added");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Item> getAllItems() {
        List<Item> itemList = new ArrayList<>();
        String sql = "SELECT * FROM item";

        try  {
        	Connection con = DBConnectionFactory.getConnection();
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                int bookid = rs.getInt("bookid");
                String bookname = rs.getString("bookname");
                double price = Double.parseDouble(rs.getString("price"));
                String author = rs.getString("author");

                itemList.add(new Item(bookid, bookname, price, author));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return itemList;
    }

    public Item getItemById(int id) {
        String sql = "SELECT * FROM item WHERE bookid = ?";
        Item item = null;

        try {
        	Connection con = DBConnectionFactory.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String bookname = rs.getString("bookname");
                    double price = Double.parseDouble(rs.getString("price"));
                    String author = rs.getString("author");
                    item = new Item(id, bookname, price, author);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return item;
    }

    public void updateItem(Item item) {
        String sql = "UPDATE item SET bookname = ?, price = ?, author = ? WHERE bookid = ?";

        try  {
        	Connection con = DBConnectionFactory.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, item.getBookname());
            ps.setDouble(2, item.getPrice());
            ps.setString(3, item.getAuthor());
            ps.setInt(4, item.getBookid());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteItem(int id) {
        String sql = "DELETE FROM item WHERE bookid = ?";

        try { Connection con = DBConnectionFactory.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}