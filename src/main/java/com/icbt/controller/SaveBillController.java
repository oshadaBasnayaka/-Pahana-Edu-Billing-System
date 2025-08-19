package com.icbt.controller;

import com.icbt.model.Bill;
import com.icbt.model.Customer;
import com.icbt.model.Item;
import com.icbt.service.CustomerService;
import com.icbt.service.ItemService;
import com.icbt.util.BillFileHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/SaveBillController")
public class SaveBillController extends HttpServlet {
    private CustomerService customerService = new CustomerService();
    private ItemService itemService = new ItemService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            String[] itemIds = request.getParameterValues("itemId");

            Customer customer = customerService.getCustomerById(customerId);
            List<Item> itemsList = new ArrayList<>();
            double totalAmount = 0;

            if(itemIds != null) {
                for(String idStr : itemIds) {
                    int itemId = Integer.parseInt(idStr);
                    Item item = itemService.getItemById(itemId);

                    int quantity = Integer.parseInt(request.getParameter("qty_" + itemId));
                    item.setQuantity(quantity);

                    totalAmount += item.getPrice() * quantity;
                    itemsList.add(item);
                }
            }

            // Generate a bill ID (e.g., timestamp)
            int billId = (int)(System.currentTimeMillis() / 1000);

            Bill bill = new Bill(billId, customer, itemsList, totalAmount);

            // Save to text file
            BillFileHandler.writeBill(bill);

            response.getWriter().println("Bill saved successfully!");

        } catch(Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error saving bill: " + e.getMessage());
        }
    }
}
