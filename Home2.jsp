<%-- 
    Document   : Home2
    Created on : Apr 3, 2020, 11:09:14 AM
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
            <div class=" full row-cols-5 ">
                <nav class=" col-2 navbar  justify-content-center float-left " >
                    <!--                    bg-warning-->
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

                <div class="col-1"></div>
                <div class="float-right col-9"  >
                    <ul class="pagination">
                        <li class="page-item "><a class="page-link" href="home"></a></li>
                        <li class="page-item active"><a class="page-link" href="home?id=2"></a></li>
                    </ul>
                    <h5></h5>
                    <h5 class="text-center">Giới Thiệu Hải Sản RubyBar</h5>
                    <pre>   RubyBar là tập đoàn thuỷ sản số 1 Việt Nam và hàng đầu trên thế giới. 
Sản phẩm của chúng tôi hiện đang có mặt tại hơn 50 quốc gia và vùng lãnh thổ, 
với doanh thu trên 10,000 tỷ VNĐ mỗi năm.</pre>
                    <p></p>
                    <pre>   Thông qua việc sở hữu các chuỗi giá trị khép kín và có trách nhiệm. 
RubyBar đặt mục tiêu xây dựng một hệ sinh thái hoàn chỉnh, mang lại những giá trị tốt đẹp cho tất cả 
các thành viên liên quan, đưa Việt Nam lên bản đồ thế giới với vị thế là nhà cung ứng tôm chất lượng 
hàng đầu.</pre>
                    <p></p>
                    <pre>   Tại RubyBar, chúng tôi không ngừng kết hợp kinh nghiệm, sự sáng tạo, và 
trách nhiệm trong toàn bộ chuỗi giá trị sản xuất tôm, từ khâu đầu đến khâu cuối. Sứ mệnh của chúng tôi 
là cung cấp cho thị trường toàn cầu những sản phẩm tôm Việt Nam tốt nhất, sạch nhất, và dinh dưỡng nhất;
đồng thời mang đến cho người tiêu dùng sự an tâm và trải nghiệm tuyệt vời nhất trên từng bàn ăn, trong 
từng bữa ăn.

    Hiện tại, RubyBar có tổng cộng 10 công ty thành viên, bao gồm 4 nhà máy chế biến tôm và 8 công ty trực 
thuộc tập đoàn. Mỗi thành viên là một mắt xích quan trọng trong toàn bộ chuỗi giá trị sản xuất tôm của 
Minh Phú.
<p></p>
<strong>Thông tin liên hệ:</strong>
Địa chỉ : Khu công nghiệp Phường 8 – Thành phố Cà Mau

Điện thoại : (84-780) 820 044

Fax : 078. 0366 8795

Email : rubybar@gmail.com

Website: www.rubybar.com
                    </pre>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<script src="css/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="css/bootstrap/js/bootstrap.min.js"></script>
