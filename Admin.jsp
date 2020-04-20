<%-- 
    Document   : Admin
    Created on : Mar 28, 2020, 5:05:40 PM
    Author     : lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
        <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="css/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <script src="css/jquery-3.4.1.min.js" type="text/javascript"></script>
        
        <link href="css/StylesAdmin.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/Home.css" type="text/css">
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </head>
    <body>
        <div class="container-fluid" >
            <div class="navbar row-cols-1 navbar-expand-sm">
                <div class="col-1">
                    <nav>
                        <a class="navbar-brand" href="admin"><img src="image/logo.jpg" height="100px"  alt="Cinque Terre"></a>         
                    </nav>
                </div>
                <div class="col-9 text-center">
                    <nav>
                        <h5><strong>THỦY HẢI SẢN RUBYBAR</strong></h5>    
                        <p><marquee><strong>Con gì biết bơi, chúng tôi đều có !</strong> </marquee></p>
                    </nav>
                </div>
                <div class="col-1" >
                    <div class="container">
                        <a href="#" data-toggle="tooltip" title="Nice to meet you!"><i class="fas fa-bell"></i></a>
                    </div>
                </div>
                <div class="col-1" >
                    <div class="dropdown">
                        <button type="button" class=" btn dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#"><i class="far fa-address-card"></i>Hello ${sessionScope.user.username}</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#"><i class="fas fa-code" ></i>Infor</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="logout"><i class="fas fa-power-off" ></i> Logout</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <h1 class="text-center" >List User In Company</h1>
                <table class="col-12 table">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Full Name</th>
                            <th>Chuc Vu</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${requestScope.arrUser.size() eq 0}" >
                                <tr>
                                    <td colspan="3" > <h3 class="mess" >No Data</h3> </td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${requestScope.arrUser}" var="arr" >
                                    <tr>
                                        <td><a href="admin?user=${arr.username}" class="link" >${arr.username}</a> </td>
                                        <td><a href="admin?user=${arr.username}" class="link" >${arr.nv.name}</a></td>
                                        <td><a href="admin?user=${arr.username}" class="link" >${arr.nv.congViec.name}</a></td>
                                        <td><button><a href="deleteAccount?username=${arr.username}" class="link"><i class="far fa-window-close"></i></a></button></td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
                <h1 class="text-center" >Update User</h1>
                <form action="admin" method="POST">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" value="${sessionScope.updateAccount.username}" ${(sessionScope.updateAccount ne null)?"readonly":""}  placeholder="Enter username" name="username">
                    </div>
                    <div class="form-group">
                        <label for="pass">Password:</label>
                        <input type="password" class="form-control" id="pass" value="${sessionScope.updateAccount.password}" placeholder="Enter password" name="password">
                    </div>
                    <div class="form-group">
                        <label for="id">ID:</label>
                        <input type="text" class="form-control" id="id" value="${sessionScope.updateAccount.nv.id}" ${(sessionScope.updateAccount ne null)?"readonly":""} placeholder="Enter ID" name="id">
                    </div>
                    <div class="form-group">
                        <label for="fullname">Full Name:</label>
                        <input type="text" class="form-control" id="fullname" value="${sessionScope.updateAccount.nv.name}" ${(sessionScope.updateAccount ne null)?"readonly":""}  placeholder="Enter password" name="fullname">
                    </div>
                    <div class="form-group">
                        <div id="flip">Click to all link down or up</div>
                        <div id="panel">
                            <table class="col-12 table">
                                <tbody>
                                    <c:forEach items="${requestScope.arrGroupLink}" var="arr" varStatus="x" >
                                        <c:set var="count" value="0" ></c:set>
                                        <c:forEach items="${requestScope.GroupOfAcc}" var="lk" >
                                            <c:if test="${lk.name eq arr.name}">
                                                <c:set var="count" value="1"  ></c:set>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${count ne 0}" >
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-3 remember">
                                                        <input type="checkbox" class="custom-control-input" checked="checked" id="customCheck+${x.index}" value="${arr.id}" name="groupLink">
                                                        <label class="custom-control-label" for="customCheck+${x.index}">${arr.name}</label>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if  >
                                        <c:if test="${count eq 0}" >
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-3 remember">
                                                        <input type="checkbox" class="custom-control-input" id="customCheck+${x.index}" value="${arr.id}" name="groupLink">
                                                        <label class="custom-control-label" for="customCheck+${x.index}">${arr.name}</label>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:if>

                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <button type="submit" class="float-right btn btn-primary">Submit</button>
                </form>
            </div>
    </body>
</html>
<script src="css/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $("#flip").click(function () {
            $("#panel").slideToggle("fast");
        });
    });
</script>
