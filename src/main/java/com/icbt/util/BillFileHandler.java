package com.icbt.util;

import com.icbt.model.Bill;
import com.icbt.model.Item;
import java.io.*;
import java.util.List;

public class BillFileHandler {
	private static final String FILE_PATH = "C:/Users/User/Documents/bills.txt";
    public static void writeBill(Bill bill) throws IOException {
        try(BufferedWriter bw = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
            StringBuilder sb = new StringBuilder();
            sb.append("Bill ID: ").append(bill.getBillId()).append("\n");
            sb.append("Customer ID: ").append(bill.getCustomer().getCustomer_id()).append("\n");
            sb.append("Name: ").append(bill.getCustomer().getUsername()).append("\n");
            sb.append("Email: ").append(bill.getCustomer().getEmail()).append("\n");
            sb.append("Address: ").append(bill.getCustomer().getAddress()).append("\n");
            sb.append("Phone: ").append(bill.getCustomer().getPhone_number()).append("\n");
            sb.append("Items:\n");
            for(Item item : bill.getItems()) {
                sb.append(item.getBookname())
                  .append(" - Price: ").append(item.getPrice())
                  .append(" - Quantity: ").append(item.getQuantity())
                  .append(" - Total: ").append(item.getPrice() * item.getQuantity())
                  .append("\n");
            }
            sb.append("Grand Total: ").append(bill.getTotalAmount()).append("\n");
            sb.append("--------------------------------------------------\n");

            bw.write(sb.toString());
        }
    }
}
