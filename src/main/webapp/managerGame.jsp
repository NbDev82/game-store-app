<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="theme-color" content="#171a21">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/motiva_sans.css?v=Rc2hpzg2Ex3T&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/shared_global.css?v=MIg0pk6GiDqL&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/buttons.css?v=6PFqex5UPprb&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/store.css?v=ATUmHvNe4brh&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/home.css?v=wxoCs_oSWCMo&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/creator_hub.css?v=e6oxFOI4knLo&amp;l=english"
              rel="stylesheet" type="text/css">
        <link
            href="https://store.akamai.steamstatic.com/public/shared/css/shared_responsive.css?v=cuGNP1dzetug&amp;l=english"
            rel="stylesheet" type="text/css">
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/jquery-1.8.3.min.js?v=.TZ2NKhB-nliU"></script>
        <script type="text/javascript">$J = jQuery.noConflict();</script>
        <script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/store.akamai.steamstatic.com\/public\/";</script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_global.js?v=ArFQHXhltxfG&amp;l=english"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/main.js?v=aVwmJL6U2Amu&amp;l=english"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/dynamicstore.js?v=lgmDRJsAubdT&amp;l=english"></script>

        <script
            type="text/javascript">Object.seal && [Object, Array, String, Number].map(function (builtin) {
                Object.seal(builtin.prototype);
            });</script>
        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', function (event) {
                $J.data(document, 'x_readytime', new Date().getTime());
                $J.data(document, 'x_oldref', GetNavCookie());
                SetupTooltips({tooltipCSSClass: 'store_tooltip'});
            });
        </script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/broadcast_carousel.js?v=9VLmMDoSI24X&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/home.js?v=V_dNbv3IFqxb&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/cluster.js?v=zUvcVvp9xZmm&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=pSvIAKtunfWg&amp;l=english"></script>

        <meta name="twitter:card" content="summary_large_image">
        <meta name="Description" content="Steam is the ultimate destination for playing, discussing, and creating games.">

        <meta name="twitter:site" content="@steam"/>

        <meta property="og:title" content="Steam Store">
        <meta property="twitter:title" content="Steam Store">
        <meta property="og:type" content="website">
        <meta property="fb:app_id" content="105386699540688">
        <meta property="og:site" content="Steam">
        <meta property="og:url" content="https://store.steampowered.com/">
        <meta property="og:description"
              content="Steam is the ultimate destination for playing, discussing, and creating games.">
        <meta property="twitter:description"
              content="Steam is the ultimate destination for playing, discussing, and creating games.">

        <link rel="canonical" href="https://store.steampowered.com/">

        <link rel="image_src" href="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg">
        <meta property="og:image" content="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg">
        <meta name="twitter:image" content="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg"/>

        <title>Welcome to Game Store</title>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        
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

    <body>
        <div class="v6 infinite_scrolling responsive_page ">
            <div class="responsive_page_frame with_header">
                <div class="responsive_page_content"style="height: auto;overflow: hidden;" >
                    <c:import url="header.jsp"></c:import>
                    <div class="responsive_page_template_content" id="responsive_page_template_content" >
                        <div class="home_page_col_wrapper"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Initial Price</th>
                            <th>Discount Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${games}" var="o">
                            <tr onclick="redirectToProductDetail('${o.gameId}')">
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.gameId}</td>
                                <td>${o.gameName}</td>
                                <td>
                                    <img src="${o.gameimgs[0].imgLink}">
                                </td>
                                <c:choose>
                                    <c:when test="${o.initialPrice eq 0}">
                                        <td>Free to Play</td>
                                        <td>Free to play</td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>${o.initialPrice}đ</td> 
                                        <td>${o.discountPrice}đ</td>
                                    </c:otherwise>
                                </c:choose>
                                <td>
                                    <a href="detail?gameId=${o.gameId}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteGame?gameId=${o.gameId}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <a href="/game-store-app-v1/home"><button type="button" class="btn btn-primary">Back to home</button></a>

        </div>
        <!-- Add Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addGame" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Game Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Publisher:</label>
                                <input name="pubName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Developer:</label>
                                <input name="devName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image Link Main</label>
                                <input name="image1" type="text" class="form-control" required>
                            </div>
                            
                            <div class="form-group">
                                <label>Image Link 2</label>
                                <input name="image2" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image Link 3</label>
                                <input name="image3" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image Link 4</label>
                                <input name="image4" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image Link 5</label>
                                <input name="image5" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Initial Price</label>
                                <input name="initialPrice" type="text" class="form-control" required>
                            </div>
                            
                            <div class="form-group">
                                <label>content</label>
                                <textarea name="content" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>warning</label>
                                <textarea name="warning" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>award</label>
                                <textarea name="award" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="datetime">Release Date</label>
                                <input type="datetime-local" id="datetime" name="releaseTime" required>
                            </div>


                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Game</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                           <div class="form-group">
                                <label>Game Name</label>
                                <input name="name" value="${detaill.gameName}" type="text" class="form-control" required>
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
                                <input name="discountedPrice" type="text" value="${detail.discountPrice}" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>content</label>
                                <textarea name="content" value="${detail.content}" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>title</label>
                                <textarea name="title" value="${detail.title}" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>warning</label>
                                <textarea name="warning" value="${detail.warning}" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>award</label>
                                <textarea name="award" value="${detail.award}" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="datetime">Release Date</label>
                                <input type="datetime-local" value="${game.releaseDate}" id="datetime" name="releaseTime" required>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listCategories}" var="o">
                                        <option value="${o.categoryId}">${o.categoryName}</option>
                                    </c:forEach>
                                </select>
                            </div>  
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>

    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>