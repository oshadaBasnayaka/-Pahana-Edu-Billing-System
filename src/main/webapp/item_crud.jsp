<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.icbt.model.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Book Management</h2>
    
   <div class=" ms-auto pb-3">
    <a href="AdminDashboard.jsp" class="btn btn-warning btn-sm">Back to Dashboard</a>
</div>
            
           

    <!-- Add / Update Book Form -->
    <%
    Item editItem = (Item) request.getAttribute("editItem");
            boolean isEdit = (editItem != null);
    %>

    <form action="ItemsController?action=<%=isEdit ? "update" : "add"%>" method="post" class="mb-5">
        <%
        if (isEdit) {
        %>
            <input type="hidden" name="bookid" value="<%=editItem.getBookid()%>">
        <%
        }
        %>
        <div class="row g-3">
            <div class="col-md-3">
                <input type="text" name="bookname" class="form-control" placeholder="Book Name" value="<%=isEdit ? editItem.getBookname() : ""%>" required>
            </div>
            <div class="col-md-2">
                <input type="text" name="price" class="form-control" placeholder="Price" value="<%=isEdit ? editItem.getPrice() : ""%>" required>
            </div>
            <div class="col-md-4">
                <input type="text" name="author" class="form-control" placeholder="Author" value="<%=isEdit ? editItem.getAuthor() : ""%>" required>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-<%=isEdit ? "primary" : "success"%> w-100">
                    <%=isEdit ? "Update" : "Add Book"%>
                </button>
            </div>
        </div>
    </form>

    <!-- Books Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Book Name</th>
                <th>Price</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
            List<Item> items = (List<Item>) request.getAttribute("items");
                            if (items != null && !items.isEmpty()) {
                                for (Item i : items) {
            %>
            <tr>
                <td><%= i.getBookid() %></td>
                <td><%= i.getBookname() %></td>
                <td><%= i.getPrice() %></td>
                <td><%= i.getAuthor() %></td>
                <td>
                    <a href="ItemsController?action=edit&bookid=<%= i.getBookid() %>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="ItemsController?action=delete&bookid=<%= i.getBookid() %>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5" class="text-center">No books found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
