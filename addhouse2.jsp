<!DOCTYPE html>
<%@page import="com.User.Model"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="vendor1/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor1/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor1/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor1/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css1/main.css" rel="stylesheet" media="all">
</head>

<body>
<jsp:include page="adminheader.jsp"></jsp:include>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50" style="background: #DCDCDC;">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Register House Details</h2>
                </div>
                <div class="card-body">
                    <form action="houseinsert.jsp" method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">Owner's Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="owner_fname">
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="owner_lname">
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Mobile Number</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="mobile">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">House name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="house_name">
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name">Society name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="society_name">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="address">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Pincode</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="pcode">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="hcity">
                                             <option disabled="disabled" selected="selected">Choose option</option>
                                            <option>Rajkot</option>
                                            <option>Jamnagar</option>
                                            <option>Morbi</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">House Status</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="hstatus">
                                             <option disabled="disabled" selected="selected">Choose option</option>
                                            <option>Sell</option>
                                            <option>Rent</option>
                                            
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">House Type</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="htype">
                                             <option disabled="disabled" selected="selected">Choose option</option>
                                            <option>1BHK</option>
                                            <option>2BHK</option>
                                            <option>3BHK</option>
                                            <option>4BHK</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Area(sq ft)</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="harea">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Age of house</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="hage">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">House price</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="hprize">
                                </div>
                            </div>
                        </div>
                        
                    
                        <div>
                            <button class="btn btn--radius-2 btn--red" style="background: #000000;" type="submit" onclick="return confirm('sucessfully register');">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    <jsp:include page="adminfooter.jsp"></jsp:include>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->