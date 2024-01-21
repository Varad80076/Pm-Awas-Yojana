<%@ page import="com.avas.DbConnection" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.avas.GetSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Pm Awas Yojana</title>

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- google fonts -->
  <link href="//fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap" rel="stylesheet">
  <style>
  img{
  margin-top:16px;
  }
  .card-body
  {
   margin-bottom:-5px;
   min-height:498px;
   
  }
  .form-group{
  margin-right:30px;
  }
 .mt-4{
 margin-top:0.5rem !important
 }
 label.checkmark:before{
 margin-top:10px;
 }
 .check-me-out{
 padding-top:11px;}
 .profile_img{
 margin-top:-15px;
 }
  .checkmark::after
  {
  margin-top:10px;
  }
  
   .table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 0;
    }

    .table th,
    .table td {
        padding: 12px;
        text-align: center;
        vertical-align: middle;
        border: 1px solid #dee2e6;
    }

    .table th {
        background-color: #f5f5f5;
    }

    .table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .table tr:hover {
        background-color: #e0e0e0;
    }

    .btn {
        padding: 4px 10px;
        font-size: 14px;
        border-radius: 4px;
    }

    .btn-danger {
        background-color: #dc3545;
        color: #fff;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }
    textarea{
    padding-right:479px;
    }
       .main-content {
      background-image: url("pmawas.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
</head>
<body class="sidebar-menu-collapsed">
<div class="se-pre-con"></div>
<section>
  <!-- sidebar menu start -->
  <div class="sidebar-menu sticky-sidebar-menu">

    <!-- logo start -->
    <div class="logo">
      <h1><a href="UserDashboard.jsp">PM AWAS</a></h1>
    </div>

  <!-- if logo is image enable this -->
    <!-- image logo --
    <div class="logo">
      <a href="UserDashboard.jsp">
        <img src="image-path" alt="Your logo" title="Your logo" class="img-fluid" style="height:35px;" />
      </a>
    </div>
    <!-- //image logo -->

    <div class="logo-icon text-center">
      <a href="UserDashboard.jsp" title="logo"><img src="assets/images/logo.png" alt="logo-icon"> </a>
    </div>
    <!-- //logo end -->

    <div class="sidebar-menu-inner">

      <!-- sidebar nav start -->
      <ul class="nav nav-pills nav-stacked custom-nav">
        <li><a href="UserDashboard.jsp"><i class="fa fa-tachometer" onclick="location.href='UserDashboard.jsp'"></i><span> Dashboard</span></a>
        </li>
        <li class="menu-list active">
          <a href="#"><i class="fa fa-file-text"></i>
            <span>Forms <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="Dealer.jsp">Add Dealar</a> </li>
            <li><a href="Awas.jsp">Add Awas</a> </li>
           
          </ul>
        </li>
        
        <li class="menu-list"><a href="#"><i class="fa fa-file-text"></i>
            <span>View Awas Report <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="Bill.jsp">Bills</a> </li>
            <li><a href="ViewBillAdmin.jsp">Photos</a> </li>
            <li><a href="ViewAdminComplaint.jsp">Complaint</a></li>
          </ul></li>
      </ul>
      <!-- //sidebar nav end -->
      <!-- toggle button start -->
      <a class="toggle-btn">
        <i class="fa fa-angle-double-left menu-collapsed__left"><span>Collapse Sidebar</span></i>
        <i class="fa fa-angle-double-right menu-collapsed__right"></i>
      </a>
      <!-- //toggle button end -->
    </div>
  </div>
  <!-- //sidebar menu end -->
  <!-- header-starts -->
  <div class="header sticky-header">

    <!-- notification menu start -->
    <div class="menu-right">
      <div class="navbar user-panel-top">
        <div class="search-box">
          <form action="#search-results.html" method="get">
            <input class="search-input" placeholder="Search Here..." type="search" id="search">
            <button class="search-submit" value=""><span class="fa fa-search"></span></button>
          </form>
        </div>
        <div class="user-dropdown-details d-flex">
          <div class="profile_details_left">
            <ul class="nofitications-dropdown">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 3 new notifications</h3>
                    </div>
                  </li>
                  <li><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li class="odd"><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar2.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>New customer registered </p>
                        <span>1 hour ago</span>
                      </div>
                    </a></li>
                  <li><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar3.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Lorem ipsum dolor sit amet </p>
                        <span>2 hours ago</span>
                      </div>
                    </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="#all" class="bg-primary">See all notifications</a>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 4 new messages</h3>
                    </div>
                  </li>
                  <li><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li class="odd"><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar2.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>New customer registered </p>
                        <span>1 hour ago</span>
                      </div>
                    </a></li>
                  <li><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar3.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Lorem ipsum dolor sit amet </p>
                        <span>2 hours ago</span>
                      </div>
                    </a></li>
                  <li><a href="#" class="grid">
                      <div class="user_img"><img src="assets/images/avatar1.jpg" alt=""></div>
                      <div class="notification_desc">
                        <p>Johnson purchased template</p>
                        <span>Just Now</span>
                      </div>
                    </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="#all" class="bg-primary">See all messages</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="profile_details">
            <ul>
              <li class="dropdown profile_details_drop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu3" aria-haspopup="true"
                  aria-expanded="false">
                  <div class="profile_img">
                    <img src="logo.jpg" class="rounded-circle" alt="" />
                    <div class="user-active">
                      <span></span>
                    </div>
                  </div>
                </a>
                <ul class="dropdown-menu drp-mnu" aria-labelledby="dropdownMenu3">
                  <li class="user-info">
                    <h5 class="user-name">Varad Badgujar</h5>
                    <span class="status ml-2">Available</span>
                  </li>
                  <li> <a href="#"><i class="lnr lnr-user"></i>My Profile</a> </li>
                  <li> <a href="#"><i class="lnr lnr-users"></i>1k Followers</a> </li>
                  <li> <a href="#"><i class="lnr lnr-cog"></i>Setting</a> </li>
                  <li> <a href="#"><i class="lnr lnr-heart"></i>100 Likes</a> </li>
                  <li class="logout"> <a href="SuperAdmin.html"><i class="fa fa-power-off" onclick="location.href='SuperAdmin.html'"></i> Logout</a> </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--notification menu end -->
  </div>
  <!-- //header-ends -->
  <!-- main content start -->
  <div class="main-content">
    <!-- content -->
    <div class="container-fluid content-top-gap">
      <!-- breadcrumbs -->
      <nav aria-label="breadcrumb" class="mb-4">
        <ol class="breadcrumb my-breadcrumb">
          <li class="breadcrumb-item"><a href="UserDashboard.jsp">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Complaint</a></li>
          <li class="breadcrumb-item active" aria-current="page">Add Comment</li>
        </ol>
      </nav>
      <!-- //breadcrumbs -->
      <!-- cards -->
      <section class="template-cards">
       
        <!-- forms -->
        <section class="forms">
           

            <!-- forms 2 -->
           
            <!-- //forms 2 -->

            <!-- horizontal forms-->
           <h3>Comment Table</h3>
<!-- <form action="DeleteComplaint.jsp" method="post">
 --><div class="card card_border py-2 mb-4">
    <div class="card-body">
        <h4>Comments </h4>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>comment_id</th>
                        <!-- <th>Name</th> -->
                        <th>email</th>
                        <th>Comment</th>
                        <th>Delete</th>
                        
                       
                    </tr>
                </thead>
                <tbody>
                    <% 
                    GetSet obj=new GetSet();
                    try {
                    	
                    	
                    	if(request.getParameter("email") != null){
                    		String email=request.getParameter("email");
                        	obj.setEmail(email);
                    	}

                    	System.out.println(obj.getEmail());
                    	System.out.println("varad");
                        Connection con = DbConnection.connect();
                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM comment_tbl where email=?");
                        pstmt.setString(1, obj.getEmail());
                       
                        ResultSet rs = pstmt.executeQuery();
                        while (rs.next()) {
                            int comment_id = rs.getInt(1);
                            String Email = rs.getString(2);
                            String comment = rs.getString(3);
                           
                            
                    %>
                    <tr>
                    
                        <td><%= comment_id %></td>
                        <td><%= Email %></td>
                        <td><%= comment %></td>
                        <td><a href="delete-edit-comment.jsp?comment_id=<%= comment_id %>"  class="btn btn-danger btn-sm" onclick="location.href='editcomment.jsp'">Delete</a></td>
                        
                    </tr>
                    
                    <% 
                        }
                        con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    %>
                    
                </tbody>
               
            </table>
             
      
        </div>
    </div>

     </div>
           
                        </div>
                    </div>
                    
            <!-- //horizontal forms-->

            <!-- supported elements -->
           
            <!-- supported elements -->

        </section>
        <!-- //forms -->
        </section>
        <!-- //forms  -->

    </div>
       
       
       
       
       
       
       
       
       
       
       

      </section>
      <!-- //cards -->

    </div>
    <!-- //content -->
  </div>
  <!-- main content end-->
  </section>
<!--footer section start-->
<!--section end-->
<!-- move top -->
<button onclick="topFunction()" id="movetop" class="bg-primary" title="Go to top">
  <span class="fa fa-angle-up"></span>
</button>
<script>
  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function () {
    scrollFunction()
  };

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("movetop").style.display = "block";
    } else {
      document.getElementById("movetop").style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
</script>
<!-- /move top -->


<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/jquery-1.10.2.min.js"></script>

<!-- chart js -->
<script src="assets/js/Chart.min.js"></script>
<script src="assets/js/utils.js"></script>
<!-- //chart js -->

<!-- Different scripts of charts.  Ex.Barchart, Linechart -->
<script src="assets/js/bar.js"></script>
<script src="assets/js/linechart.js"></script>
<!-- //Different scripts of charts.  Ex.Barchart, Linechart -->


<script src="assets/js/jquery.nicescroll.js"></script>
<script src="assets/js/scripts.js"></script>

<!-- close script -->
<script>
  var closebtns = document.getElementsByClassName("close-grid");
  var i;

  for (i = 0; i < closebtns.length; i++) {
    closebtns[i].addEventListener("click", function () {
      this.parentElement.style.display = 'none';
    });
  }
</script>
<!-- //close script -->

<!-- disable body scroll when navbar is in active -->
<script>
  $(function () {
    $('.sidebar-menu-collapsed').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
<!-- disable body scroll when navbar is in active -->

 <!-- loading-gif Js -->
 <script src="assets/js/modernizr.js"></script>
 <script>
     $(window).load(function () {
         // Animate loader off screen
         $(".se-pre-con").fadeOut("slow");;
     });
 </script>
 <!--// loading-gif Js -->

<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>


</body>

</html>