<%-- 
    Document   : AddNhanVien
    Created on : Mar 31, 2020, 10:38:52 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <a href="#" data-toggle="tooltip" title="Nice to meet you!"><i class="fa fa-cutlery"></i></a>
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

                    <form action="tuyen_dung_nhan_vien" method="POST" >
                        ID: <input type="text" name="id"/>
                        Name: <input type="text" name="name" /><br>
                        Address: <input type="text" name="address" /><br>
                        Gender: <input type="radio" checked value="Male" name="gender" />Male<input type="radio" value="Female" name="gender" />Female<br>
                        Phone: <input type="text" name="phone" />
                        Chung Minh Thu: <input type="text" name="chungminhthu" /><br>
                        Date Of Birth: <input type="text" name="dob" />
                        Dan Toc: <input type="text" name="dantoc" /><br>
                        Cap Bac Trong Cong Ty: <select name="capbac" >
                            <c:forEach items="${requestScope.arrCB}" var="cb" >
                                <option value="${cb.id}" >${cb.name}</option>
                            </c:forEach>
                        </select><br>
                        Cong Viec: <select name="congviec" >
                            <c:forEach items="${requestScope.arrCV}" var="cv" >
                                <option value="${cv.id}">${cv.name}</option>
                            </c:forEach>
                        </select><br>
                        Chung Chi:
                        <table>
                            <c:forEach items="${requestScope.arrCC}" var="cc" >
                                <tr>
                                    <td>
                                        <input type="checkbox" value="${cc.id}" name="chungchi" id="idchungchi+${cc.id}" />
                                        <label for="idchungchi${cc.id}" >${cc.name}</label>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                        <input type="submit" value="Tuyen Dung" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<script src="css/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>
