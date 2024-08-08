	<%@ page import="java.util.List" %>
	<%@ page import="com.file" %>
	<%@ page import="com.DB.fileDAO" %>
	<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- <meta charset="utf-8"> -->
    <title>CrackIt Academy Project</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
 <style type="text/css">
 body{
 background-color: #caeaec;
 }
.prevque{

width:50%;
margin:100px;
border: 1px solid white;
background-color:white;
 padding: 0 15px;
  	

}
.prevque:hover{

box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4);
 transform: scale(1.05);
}

/* a{
text-decoration: none;
} */

#tablestyle {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#tablestyle td, #tablestyle th {
  border: 1px solid #ddd;
  padding: 8px;
}

#tablestyle tr:nth-child(even){background-color: #f2f2f2;}

#tablestyle tr:hover {background-color: #ddd;}

#tablestyle th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner"></div>
    </div>
    <!-- Spinner End -->


   <div class="container-fluid bg-dark px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light"><i class="fa fa-map-marker-alt me-2"></i>Gulmohar Colony, Pimple Gurav, Pune</small>
                    <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+91 8421835869</small>
                    <small class="text-light"><i class="fa fa-envelope-open me-2"></i>telphatech@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-4 text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
                            <a href="index.jsp" name="testbutton"class="btn btn-primary py-2 px-4 mt-4">logout</a>
               
                </div>
            </div>
           
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar & Carousel Start -->
    <div class="container-fluid position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
            <a href="index.html" class="navbar-brand p-0">
                <h1 class="m-0"><i class="fa fa-university" aria-hidden="true"></i>CrackIt</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="homepage.jsp" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">About</a>
                    
                     <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Student Corner</a>
                        <div class="dropdown-menu m-0">
                            <a href="test.html" class="dropdown-item">Tests</a>
                            <a href="notes_subjectwise.html" class="dropdown-item">Notes Subject-wise</a>
                            <a href="question_bank.jsp" class="dropdown-item">Question Bank</a>
                            <a href="pastQuePaper.jsp" class="dropdown-item">Past Question Paper</a>
                             <a href="classquepaper.jsp" class="dropdown-item">class Questions</a>
                            <a href="class_features.html" class="dropdown-item">Class Features</a>
                        </div>
                    </div>
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Fee Structure</a>
                        <div class="dropdown-menu m-0">
                            <a href="all_details_fee.html" class="dropdown-item">All Details Fee Structure</a>
                            <a href="batch_fee.html" class="dropdown-item">Batch Fee</a>
                            <a href="pg_batch_fee.html" class="dropdown-item">PG + Batch Fee</a>
                        </div>
                    </div>

                   <a href="pginfo.jsp" class="nav-item nav-link">PG Info</a>



                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Exam Section</a>
                        <div class="dropdown-menu m-0">
                            <a href="upcoming_exam.html" class="dropdown-item">Upcoming Exam</a>
                            <a href="exam_timetable.html" class="dropdown-item">Exam Timetable</a>
                            <a href="exam_form_dates.html" class="dropdown-item">Exam Form Dates</a>
                            <a href="exam_results.html" class="dropdown-item">Exam Results</a>
                            <a href="cut_offs.html" class="dropdown-item">Cut-Offs</a>
                            <a href="exam_notices.html" class="dropdown-item">Exam Notices</a>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Webinar</a>
                        <div class="dropdown-menu m-0">
                           <a href="live_webinar.html" class="dropdown-item">Live Webinar</a>
                            <a href="upcoming_web.html" class="dropdown-item">Upcoming Webinar</a>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Library</a>
                        <div class="dropdown-menu m-0">
                            <a href="library.html" class="dropdown-item">Library Info</a>
                            
                            <a href="BookReading.html" class="dropdown-item">Reading Room</a>
                            
                        </div>
                    </div>
                    
                   <a href="ground.html" class="nav-item nav-link">Ground </a>
                       


                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                
            </div>
        </nav>



        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            <div class="row py-5">
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">Past Question Paper</h1>
                    <a href="" class="h5 text-white">Student Corner</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h5 text-white"> Past Question Paper</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
    
    <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->
    
<!-- question paper start -->
 <center><h1 style=color:rgb(0,0,0);>DOWNLOAD ALL PREVIOUS YEAR QUESTION PAPER</h1></center>
 
  
    
   
   <!-- Qustion paper end -->
   
<center>      <div class=" prevque">
      <center><h1 style=color:blue;> Past Questions Paper</h1></center><br>
 <table id="tablestyle" border="1">
        <thead>
            <tr>
                <th>Sr.No</th>
                <th>Name</th>
                <th>PDF Link</th>
            </tr>
        </thead>
        <tbody>
            <% 
                fileDAO fDAO = new fileDAO();
                List<file> Files = fDAO.getAllFiles();
                for (file f : Files) {
            %>
            <tr>
                <td><%= f.getId() %></td>
                <td><%= f.getFilename() %></td>
             <td>  <a href="Downloadfile.jsp?id=<%= f.getId() %>">Download</a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table> 
</div></center>
<%-- <div class=" prevque">
      <center><h1 style=color:blue;> UPSC</h1></center><br>
 <table id="tablestyle" border="1">
        <thead>
            <tr>
                <th>Sr.No</th>
                <th>Name</th>
                <th>PDF Link</th>
            </tr>
        </thead>
        <tbody>
            <% 

            fileDAO fDAO = new fileDAO();
            List<file> Files = fDAO.getAllFiles();
            for (file f : Files) {
                
            %>
            <tr>
                <td><%= f.getId() %></td>
                <td><%= f.getFilename() %></td>
             <td>  <a href="Downloadfile.jsp?id=<%= f.getId() %>">Download</a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>  --%>
</div>

  <div class="container-fluid bg-dark text-light mt-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-4 col-md-6 footer-about">
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
                        <a href="index.html" class="navbar-brand">
                            <h1 class="m-0 text-white"><i class="fa fa-user-tie me-2"></i>CrackIt</h1>
                        </a>
                        <p class="mt-3 mb-4">Welcome to our esteemed Crackit academy dedicated to shaping the future leaders for the competitive landscape of UPSC and MPSC examinations. With a relentless commitment to excellence, we provide a nurturing environment that fosters intellectual growth, strategic thinking, and comprehensive preparation. </p>
                        <!-- <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                                <button class="btn btn-dark">Sign Up</button>
                            </div>
                        </form> -->
                    </div>
                </div>
                <div class="col-lg-8 col-md-6">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">Get In Touch</h3>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-geo-alt text-primary me-2"></i>
                                <p class="mb-0">Sr. No. 73/6/13, B-10, Gulmohar Colony, Pimple Gurav, Pune - 411061</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0">telphatech@gmail.com</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-telephone text-primary me-2"></i>
                                <p class="mb-0">+91 8421835869</p>
                            </div>
                            
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">Quick Links</h3>
                            </div>
                           <div class="link-animated d-flex flex-column justify-content-start">
                                <a class="text-light mb-2" href="homepage.jsp"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                                <a class="text-light mb-2" href="about.html"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                                <a class="text-light mb-2" href="test.html"><i class="bi bi-arrow-right text-primary me-2"></i>Student Corner</a>
                                <a class="text-light mb-2" href="exam_timetable.html"><i class="bi bi-arrow-right text-primary me-2"></i>Exam Section</a>
                                <a class="text-light mb-2" href="all_details_fee.html"><i class="bi bi-arrow-right text-primary me-2"></i>Fee Structure</a>
                                <a class="text-light" href="contact.html"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                           <!--  <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0"></h3>
                            </div> -->
                            <div class="d-flex mt-4">
                                <a class="btn btn-primary btn-square me-2" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                                <a class="btn btn-primary btn-square me-2" href="#"><i class="fab fa-facebook-f fw-normal"></i></a>
                                <a class="btn btn-primary btn-square me-2" href="#"><i class="fab fa-linkedin-in fw-normal"></i></a>
                                <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram fw-normal"></i></a>
                            </div>
                        </div> 
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white" style="background: #061429;">
        <div class="container text-center">
            <div class="row justify-content-end">
                <div class="col-lg-8 col-md-6">
                    <div class="d-flex align-items-center justify-content-center" style="height: 75px;">
                        <p class="mb-0">CrackIt Academy &copy; 2024. All Rights Reserved. Designed by Telphatech LLP</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>