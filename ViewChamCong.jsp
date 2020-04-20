<%-- 
    Document   : ViewChamCong
    Created on : Apr 2, 2020, 9:30:09 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" 
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Công Ty Thủy Hải Sản RubyBar</title>
        <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <a class="navbar-brand" href="home"><img src="image/logo.jpg" height="100px"  alt="Cinque Terre"></a>         
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
            <div class="col-1"> 
                <p></p>
            </div>
            <div class=" full row-cols-5">
                <nav class=" col-2 navbar  justify-content-center float-left ">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="home" ><i class="can fas fa-home">   Home</i></a>
                        </li>
                        <c:forEach items="${requestScope.arrGroupLinkHome}" var="lk" >
                            <li class="nav-item">
                                <a class="nav-link" href="${lk.id}"><i class="${lk.icon}">   ${lk.name}</i></a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
                <div class="float-right col-10"  >
                    <h4 class="text-center">Bảng Chấm Công</h4>
                    <p></p>
                    <table border="1px" class="table-responsive" >
                        <tr>
                            <th rowspan="2" >ID</th>
                            <th rowspan="2" >Name</th>
                            <th colspan="${requestScope.arrdate.size()}" class="text-center" >Diem Danh</th>
                        <tr>
                            <c:forEach items="${requestScope.arrdate}" var="date" >
                                <th>
                                    <fmt:formatDate value="${date}" pattern="dd-MM" ></fmt:formatDate> 
                                    </th>
                            </c:forEach>       
                        </tr>
                        </tr>
                        <c:forEach items="${requestScope.arrAllNhanVien}" var="nv1" >
                            <tr>
                                <td>${nv1.id}</td>
                                <td>${nv1.name}</td>

                                <c:forEach items="${requestScope.arrdate}" var="date" > 
                                    <c:set value="0" var="check" ></c:set>
                                    <c:forEach items="${requestScope.arrChamCong}" var="cc" >
                                        <c:if test="${date eq cc.ngay}" >              
                                            <c:if test="${nv1.id eq cc.nv.id}" >
                                                <c:set value="1" var="check" ></c:set>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                    <td class="text-center"  ><input type="checkbox" ${(check eq 1)?"checked":""} disabled="" name="chamcong" /></td>

                                </c:forEach>     
                                <td><a href="update_chamcong?idnv=${nv1.id}" >Update </a></td>
                            </tr>
                        </c:forEach>
                    </table>

                    <ul class="pagination pagination-sm">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<script src="css/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>
