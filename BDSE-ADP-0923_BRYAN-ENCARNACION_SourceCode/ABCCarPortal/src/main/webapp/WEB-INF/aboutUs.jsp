<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="/css/styles.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>
<%@ include file="header.jsp"%>

	<header class="masthead" style= "background-image: url(https://images.pexels.com/photos/4062473/pexels-photo-4062473.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1); no-repeat;">
        <div class="container">
            <div class="masthead-heading text-uppercase">ABOUT US</div>
            <div class="masthead-subheading">Everything Your Car Desires - One Stop for All Your Automotive Needs!</div>
        </div>
    </header>
        
	<section class="page-section bg-light" id="team">
         <div class="container">
             <div class="text-center">
                 <h2 class="section-heading text-uppercase">About</h2>
             </div>
             <div class="row pb-5">
                 <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">
                   Welcome to ABC Car Portal - Your Ultimate Destination for High-Quality Used Cars! We offer a diverse selection of reliable and affordable vehicles, 
                   ensuring a transparent and hassle-free buying experience. Our user-friendly website makes it easy to browse and filter by budget, make, model, and more. 
                   Our dedicated team provides top-notch customer service, assisting you every step of the way, from inquiries to financing and delivery. 
                   We also buy cars, offering competitive prices and a quick process. Thank you for choosing ABC Car Portal - we look forward to serving you!
                 </p></div>
             </div>
             <div class="text-center pt-5 pb-4">
                 <h2 class="section-heading text-uppercase">Founders</h2>
             </div>
             <div class="row">
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle" src="/images/bryan.jpg" alt="..." />
                         <h4>Bryan Francis</h4>
                         <p class="text-muted">CEO</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle" src="/images/harvey.jpg" alt="..." />
                         <h4>Harvey Specter</h4>
                         <p class="text-muted">COO</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
                 <div class="col-lg-4">
                     <div class="team-member">
                         <img class="mx-auto rounded-circle" src="/images/pierce.jpg" alt="..." />
                         <h4>Pierce Brosnan</h4>
                         <p class="text-muted">Chairman</p>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>
                     </div>
                 </div>
             </div>
         </div>
     </section>

<%@ include file="footer.jsp"%>
</body>
</html>
