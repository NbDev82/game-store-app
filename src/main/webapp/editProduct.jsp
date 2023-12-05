<%-- 
    Document   : editProduct
    Created on : Dec 5, 2023, 8:01:50 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="assets/css/managerGame.css">
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Game Id</label>
                                    <input name="gameId" value="${detail.gameId}" type="text" class="form-control" required readonly>
                                </div>
                                <div class="form-group">
                                    <label>Game Name</label>
                                    <input name="name" value="${detail.gameName}" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Publisher:</label>
                                    <input name="pubName" value="${detail.pubName}" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Developer:</label>
                                    <input name="devName" value="${detail.devName}" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Initial Price</label>
                                    <input name="initialPrice" value="${detail.initialPrice}" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Discounted Price</label>
                                    <input name="discountPrice" type="text" value="${detail.discountPrice}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>content</label>
                                    <textarea name="content" class="form-control" required>${detail.content}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>title</label>
                                    <textarea name="title"  class="form-control" required>${detail.title}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>warning</label>
                                    <textarea name="warning" class="form-control" required>${detail.warning}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCategories}" var="o">
                                            <option value="${o.categoryId}">${o.categoryName}</option>
                                        </c:forEach>
                                    </select>
                                </div>  
                                <div class="form-group">
                                    <label>award</label>
                                    <textarea name="award" class="form-control" required>${detail.award}</textarea>
                                </div>

                                
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
