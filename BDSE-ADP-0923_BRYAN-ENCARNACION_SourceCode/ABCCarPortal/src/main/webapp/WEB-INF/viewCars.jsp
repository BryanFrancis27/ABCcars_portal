<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="/css/styles.css" rel="stylesheet" />

</head>

<body>
<%@ include file="header.jsp"%>
		<header class="masthead" style= "background-image: url(https://images.pexels.com/photos/4062473/pexels-photo-4062473.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1); no-repeat;">
            <div class="container">
                <div class="masthead-heading text-uppercase">ABC CAR</div>
                <div class="masthead-subheading">Excellence in Every Ride: Discover Our Premium Car Selection!</div>
                <a class="btn btn-secondary btn-xl text-uppercase" href="#services">Tell Me More</a>
            </div>
        </header>

        <div class="container mt-5 mb-5">
            <sec:authorize access="hasRole('Users')">
                <!-- post car link-->
                <div class="row p-3 mb-5" style="border: 1px solid rgb(126, 120, 120); border-radius: 20px;">
                    <div class="col-5">
                        <p class="font-weight-bold"
                            style="margin-bottom: 0px; font-weight: bolder;">Turn Your Car into Cash Today: Fast and Easy!</p>
                        <p style="margin-bottom: 0px;">Sell Your Car
                            in a click with Us</p>
                    </div>
                    <div class="col-4"></div>
                    <div class="col col-lg-2" style="text-align: end; margin: auto;">
                        <span class="border border-white p-2"> <!-- Button trigger modal -->
                            <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal" style="font-color: white;">
                                Sell Now</button>
                        </span>
                        <!-- Modal -->
    
                        <div class="modal fade" id="exampleModal" tabindex="-1"
                            aria-labelledby="exampleModalLabel" aria-hidden="true"
                            role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
    
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Turn Your Car into Cash Today: Fast and Easy!</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <c:if test="${success_post != null}">
                                            <div class="alert alert-success">${success_post}</div>
                                        </c:if>
    
                                        <!-- Car Post Form -->
                                        <sf:form action="car_post" method="post" class="was-validated"
                                            modelAttribute="car" enctype="multipart/form-data">
                                            <div class="mb-3 mt-3">
                                                <label for="name" class="d-flex form-label">Name:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter car name" name="name" path="name"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="model" class="d-flex form-label">Model:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter model" name="model" path="model"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="price" class="d-flex form-label">Price
                                                    (USD):</label>
                                                <sf:input type="text" class="form-control" id="price"
                                                    placeholder="Enter car price" name="price" path="price"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="make" class="d-flex form-label">Make
                                                    Year:</label>
                                                <sf:input type="text" class="form-control"
                                                    placeholder="Enter make year" name="make" path="make"
                                                    required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="registeration" class="d-flex form-label">Registration
                                                    Date:</label>
                                                <sf:input type="text" class="form-control" id="registeration"
                                                    placeholder="Enter registeration date" name="registeration"
                                                    path="registeration" required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="d-flex form-label">Photo:</label> <input
                                                    type="file" class="form-control" name="fileImage" id="photo"
                                                    accept="image/png, image/jpeg" required="true" />
                                                <div class="valid-feedback">Valid.</div>
                                                <div class="invalid-feedback">Please fill out this
                                                    field.</div>
                                            </div>
    
                                            <div class="holder"
                                                style="height: 300px; width: 300px; margin: auto;">
                                                <img id="imgPreview" src="#" alt="image preview"
                                                    style="width: inherit;" />
                                            </div>
    
                                            <button type="submit" class="btn btn-secondary d-flex">Post</button>
                                        </sf:form>
                                        <script>
                                        $(document).ready(() => {
                                            
                                            $("#photo").change(function () {
                                                const file = this.files[0];
                                                if (file) {
                                                    let reader = new FileReader();
                                                    reader.onload = function (event) {
                                                        $("#imgPreview")
                                                          .attr("src", event.target.result);
                                                    };
                                                    reader.readAsDataURL(file);
                                                }
                                            });
                                        });
                                    </script>
                                        <!-- Car Post Form -->
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
    
                                    </div>
                                </div>
                            </div>
    
                        </div>
                    </div>
                </div>
            </sec:authorize>
            <!-- post car link-->
    
    
            <!-- list of all cars posted -->
            <div class="row" style="gap: 60px;">
                <c:forEach items="${cars}" var="c">
                    <c:set var="id" value="${c.id}"></c:set>
                    <c:if test="${success_post == null}">
    
                        <c:if test="${c.sellStatus != 'sold'}">
                            <div class="card" style="width: 400px">
                                <img class="card-img-top" src="${c.photoImagePath}"
                                    alt="${c.photos}" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title">${c.name}</h4>
                                    <p class="card-text">
                                        <i class="fas fa-tags"></i>&nbsp;USD ${c.price}
                                    </p>
    
                                    <!--<a href="#" class="btn"
                                style="background-color: red; margin-right: 40px;">Book a
                                Test Drive</a>-->
                                    <a href="/car_detail?cid=${c.id}" class="btn btn-secondary">View
                                        Car Details</a>
                                </div>
                            </div>
                        </c:if>
    
                    </c:if>
                </c:forEach>
                <c:if test="${success_post != null}">
                    <div class="alert alert-success">${success_post}
                        Click here to <a href="/car_detail?cid=${id}">View</a> your car
                        post
                    </div>
                </c:if>
            </div>
            <!-- list of all cars posted -->
        </div>
        
        <section class="page-section bg-dark" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase text-white pb-5">Our trusted Dealerships</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="https://autofocus.com.ph/assets/photos/2646cea32202673cef32d1430d88afa8.jpg" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Gateway Manila</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="https://premium.goauto.com.au/wp-content/uploads/2022/12/Subaru-showroom-Wyong-4-TH-1024x572-1.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Subaru Cebu</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 235px;" class="img-fluid" src="https://autofocus.com.ph/assets/photos/697de8592c4d14698e6c4d9fa36738ca.jpg" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Auto Central Davao</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px;" class="img-fluid" src="https://d2y8zz1tu4v9hy.cloudfront.net/download/ndnj-toyota_silang_bldg.png" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"> Toyota Silang, Cavite</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px; width: 450px;" class="img-fluid" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj6ZKCnVdCsMXS_dI8Wyd9H_ltIfD7iZeq0k3cQ_kkdKMMYBBDMQWyDSwspw7tg3I1nRvWgTyZc_c4Kt0jzB6NUkteyPUBh9nUeV0Zowl-0HsRBO3etuHkllfLADmsiJBURG5nET-aY23HlDfwWl-Iy-0tU5nKk8_OH1kS5d2iz5EfLM_O52vmRmT7iCg/s1024/honda_manila.jpg" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Honda Pampanga</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img style="height: 261px;" class="img-fluid" src="https://i0.wp.com/nanocoatsolutions.com/wp-content/uploads/sites/25/2021/01/showroom-vw-7.jpg?fit=700%2C467&ssl=1" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Volkswagen BGC</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="py-5">
            <div class="container">
                <h3 class="section-subheading text-dark text-center pb-2">Our Partners</h3>
                <div class="row align-items-center p-2">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pFUIg6RkKEBiMrLyTHG9AgENlqJCH2fsaw&s" alt="..." aria-label="Microsoft Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBBDIhDa4C2APUusRWIsAtGr9vh1X_MBCb9w&s" alt="..." aria-label="Google Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://images.topgear.com.ph/topgear/images/schema-logo-topgearph.png" alt="..." aria-label="Facebook Logo" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img style="width: 300px; height: 200px;" class="img-fluid img-brand d-block mx-auto" src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgaJg1QkJgUk_CzS87vIafCrK-hTUKGn_SFuAkGae8SC0tyvyDDODsRdFqQtI_LmG1THI0JgJwumO19btWImMErOqLpZQeKrEN6Vo0rxJf0gobeOkPvGD3ZXdAImVdaT3BeJfAE2klFSU5k/s1600/auto_deal_logo.jpg" /></a>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<%@ include file="footer.jsp"%>
</body>
</html>