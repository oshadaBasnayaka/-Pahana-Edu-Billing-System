package com.icbt.controller;

import com.icbt.model.Customer;
import com.icbt.model.Item;
import com.icbt.service.CustomerService;
import com.icbt.service.ItemService;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/BillController")
public class BillController extends HttpServlet {
    private CustomerService customerService = new CustomerService();
    private ItemService itemService = new ItemService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int customerId = Integer.parseInt(request.getParameter("customerId"));
            String[] itemIds = request.getParameterValues("itemId");

            Customer customer = customerService.getCustomerById(customerId);
            List<Item> selectedItems = new ArrayList<>();

            if (itemIds != null) {
                for (String idStr : itemIds) {
                    int itemId = Integer.parseInt(idStr);
                    Item item = itemService.getItemById(itemId);

                    // Get quantity from form
                    String qtyStr = request.getParameter("qty_" + itemId);
                    int quantity = qtyStr != null ? Integer.parseInt(qtyStr) : 1;
                    item.setQuantity(quantity);

                    selectedItems.add(item);
                }
            }
            
            request.setAttribute("customer", customer);
            request.setAttribute("items", selectedItems);
            RequestDispatcher dispatcher = request.getRequestDispatcher("bill.jsp");
            dispatcher.forward(request, response);



        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(500, "Error generating bill");
        }
    }
}
