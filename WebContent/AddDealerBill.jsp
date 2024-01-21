<%@ page import="com.avas.DbConnection" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
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
  body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .form-container {
      max-width: 400px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding-bottom:22px;
    }

    .form-container h2 {
      margin-bottom: 20px;
      text-align: center;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
    }

    .form-group select,
    .form-group input[type="text"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .form-group input[type="text"] {
      margin-top: 5px;
    }

    .form-group .select-wrapper {
      position: relative;
    }

    .form-group select {
      appearance: none;
      -webkit-appearance: none;
      background: url('https://cdn2.iconfinder.com/data/icons/picons-basic-1/57/basic1-014_download_arrow_drop_down-512.png')
        no-repeat right center;
      background-size: 16px;
      padding-right: 30px;
    }

    .form-group .form-icon {
      position: absolute;
      top: 12px;
      right: 12px;
      pointer-events: none;
    }

    .submit-button {
      background-color: #4755ab;
      color: #fff;
      border: none;
      padding: 12px 20px;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
      margin-bottom:10px;
    }

    .submit-button:hover {
      background-color: #4755ab;
    }
    
  .form-row {
    margin-bottom: 20px; /* Adjust the margin between form rows */
  }

  .form-group {
    margin-bottom: 15px; /* Adjust the margin between form elements */
  }

  .input__label {
    margin-bottom: 5px; /* Adjust the margin between input labels and inputs */
  }

  .input-style {
    padding: 10px; /* Adjust the padding inside input fields */
  }

  .btn-style {
    margin-top: 10px; /* Adjust the margin for buttons */
  }

  /* Optionally, you can add more specific styles for individual elements if needed */
  .input-style[type="text"] {
    /* Additional styles for text input fields */
  }

  .input-style[type="password"] {
    /* Additional styles for password input fields */
  }
  
  img{
  margin-top:16px;
  }
  .card-body
  {
   margin-bottom:-5px;
   min-height:498px;
   
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
    <style>
  .card-body {
    padding: 20px; /* Add some padding to the card body */
  }

  .form-row {
    margin-bottom: 20px; /* Adjust the margin between form rows */
  }

  .form-group {
    margin-bottom: 15px; /* Adjust the margin between form elements */
  }

  .input__label {
    margin-bottom: 5px; /* Adjust the margin between input labels and inputs */
  }

  .input-style {
    padding: 10px; /* Adjust the padding inside input fields */
  }

  .btn-style {
    margin-top: 10px; /* Adjust the margin for buttons */
  }

  /* Optionally, you can add more specific styles for individual elements if needed */
  .input-style[type="text"] {
    /* Additional styles for text input fields */
  }

  .input-style[type="password"] {
    /* Additional styles for password input fields */
  }

  /* Add more styles for other input types as required */

  /* Custom styles for select elements */
  .form-group select {
    width: 100%; /* Make the select element take up the entire width of its container */
    padding: 10px; /* Adjust padding inside select element */
    border-radius: 5px; /* Add some border-radius to select element */
  }

  /* Custom styles for checkboxes */
  .form-check {
    margin-bottom: 10px; /* Adjust the margin between checkboxes */
  }

  .form-check-label {
    padding-left: 25px; /* Adjust padding to align the checkbox label */
    position: relative;
  }

  .form-check-label::before {
    content: '';
    position: absolute;
    left: 0;
    top: 4px;
    width: 16px;
    height: 16px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  .form-check-label::after {
    content: '';
    position: absolute;
    left: 5px;
    top: 8px;
    width: 8px;
    height: 4px;
    border: solid #fff;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
    display: none;
  }

  .form-check-input:checked + .form-check-label::after {
    display: block;
  }
</style>
    
  </style>
</head>
<body class="sidebar-menu-collapsed">
<div class="se-pre-con"></div>
<section>
  <!-- sidebar menu start -->
  <div class="sidebar-menu sticky-sidebar-menu">

    <!-- logo start -->
    <div class="logo">
      <h1><a href="DealerDashboard.jsp">PM AWAS</a></h1>
    </div>

  <!-- if logo is image enable this -->
    <!-- image logo --
    <div class="logo">
      <a href="index.html">
        <img src="image-path" alt="Your logo" title="Your logo" class="img-fluid" style="height:35px;" />
      </a>
    </div>
    <!-- //image logo -->

    <div class="logo-icon text-center">
      <a href="DealerDashboard.jsp" title="logo"><img src="assets/images/logo.png" alt="logo-icon"> </a>
    </div>
    <!-- //logo end -->

    <div class="sidebar-menu-inner">

      <!-- sidebar nav start -->
      <ul class="nav nav-pills nav-stacked custom-nav">
        <li><a href="DealerDashboard.jsp"><i class="fa fa-tachometer" onclick="location.href='DealerDashboard.jsp'"></i><span> Dashboard</span></a>
        </li>
        <li class="menu-list active">
          <a href="#"><i class="fa fa-file-text"></i>
            <span>Forms <i class="lnr lnr-chevron-right"></i></span></a>
          <ul class="sub-menu-list">
            <li><a href="AddDealerBill.jsp">Add Dealer Bill</a> </li>
            <li><a href="ViewDealerBill.jsp">View Dealer Bill</a> </li>
            
          </ul>
        </li>
        
        
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
                  <li class="logout"> <a href="SuperAdmin.html"><i class="fa fa-power-off" ></i> Logout</a> </li>
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
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Elements</a></li>
          <li class="breadcrumb-item active" aria-current="page">Bill</li>
        </ol>
      </nav>
      <!-- //breadcrumbs -->
      <!-- cards -->
      <section class="template-cards">
       
        <!-- forms -->
        <section class="forms">
           

            <!-- forms 2 -->
            <div class="form-container">
    <h2>Bill</h2>
    <form action="AddBill" method="post">
      <div class="form-group">
        <label for="billId">Bill Id</label>
        <input type="text" id="billId" name="bill_id" placeholder="Enter Bill Id" required>
      </div>

      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter Username" required>
      </div>

      <div class="form-group">
        <label for="item1">Select Item 1</label>
        <div class="select-wrapper">
          <select id="item1" name="item1" required>
            <option value="" disabled selected>Select Item 1</option>
            <option value="Bricks">Bricks</option>
            <option value="Cement">Cement</option>
            <option value="Tiles">Tiles</option>
          </select>
          <span class="form-icon">&#x25BC;</span>
        </div>
      </div>

      <div class="form-group">
        <label for="item2">Select Item 2</label>
        <div class="select-wrapper">
          <select id="item2" name="item2" required>
            <option value="" disabled selected>Select Item 2</option>
            <option value="Bricks">Bricks</option>
            <option value="Cement">Cement</option>
            <option value="Tiles">Tiles</option>
          </select>
          <span class="form-icon">&#x25BC;</span>
        </div>
      </div>

      <div class="form-group">
        <label for="quantity1">Quantity 1</label>
        <input type="text" id="quantity1" name="quantity1" placeholder="Enter Quantity 1" required>
      </div>

      <div class="form-group">
        <label for="quantity2">Quantity 2</label>
        <input type="text" id="quantity2" name="quantity2" placeholder="Enter Quantity 2" required>
      </div>

      <div class="form-group">
        <label for="cost1">Cost 1</label>
        <input type="text" id="cost1" name="cost1" placeholder="Enter Cost 1" required>
      </div>

      <div class="form-group">
        <label for="cost2">Cost 2</label>
        <input type="text" id="cost2" name="cost2" placeholder="Enter Cost 2" required>
      </div>

      <button type="submit" class="submit-button" onclick="location.href='AddDealerBill.jsp'">Submit</button>
       
    </form>
  </div>
            <!-- //forms 2 -->

            <!-- horizontal forms-->
           

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