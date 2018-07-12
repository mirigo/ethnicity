<%-- 
    Document   : fpons
    Created on : 17-Feb-2017, 22:41:09
    Author     : mgomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import = "java.io.*, javax.servlet.*, javax.servlet.http.*, javax.sql.*, java.sql.*"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon">
  <meta name="description" content="">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">

  <script type="text/javascript" src="js/functions.js"></script>

</head>

<section id="menu-0">

    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="https://www.cdrc.ac.uk" class="navbar-logo"></a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar"><li class="nav-item"><a class="nav-link link" href="#top">HOME</a></li><li class="nav-item"><a class="nav-link link" href="index.html#form1-5">OVERVIEW</a></li></ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-section-with-arrow" id="header1-1" style="background-image: url(assets/images/mbr-2000x1336.jpg);">

    <div class="mbr-table-cell">

        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10">

                    <h1 class="mbr-section-title display-1">ETHNICITY ESTIMATOR</h1>
                    <p class="mbr-section-lead lead">This tool allows you to see what we think is your ethnic group, based upon your given and family name. If you would like to classify more names (up to 5,000 at a time), you can apply to use our free names classifier. 
</p>
                    <div class="mbr-section-btn">
                        <a class="btn btn-lg btn-primary" href="index.html#form1-5">Classify</a>
                        <a class="btn btn-lg btn-primary" href="login.jsp">Log In</a>
                  <!---     <a class="btn btn-lg btn-primary" href="index.html#form1-7">Log In</a>
                         <a class="btn btn-lg btn-white btn-white-outline" href="index.html#form1-6">Sign Up</a>--->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating" aria-hidden="true"><a href="#footer1-2"><i class="mbr-arrow-icon"></i></a></div>

</section>

<section class="mbr-section" id="form1-5" style="background-color: rgb(255, 255, 255); padding-top: 120px; padding-bottom: 120px;">

    <div class="mbr-section mbr-section__container mbr-section__container--middle">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-xs-center">
                    <h3 class="mbr-section-title display-2">Classify a name</h3>
                    <p align="justify">
                    This Website is part of a project run by the 
                    <a href="http://www.esrc.ac.uk" class="link" target="_blank">
                       Economic and Social Research Council (ESRC)</a>  and
                       the  <a href="https://www.cdrc.ac.uk" class="link" target="_blank">Consumer Research Data Centre (CDRC).</a>            
                    </p>
                <p align="justify">
                    Results from searches and user feedback are used to improve our ongoing research.
                </p>
                      </div>
            </div>
        </div>
    </div>
    <div class="mbr-section mbr-section-nopadding">
        <div class="container">
           <small class="mbr-section-subtitle">Type a Surname and Forename in any style you want: upper, lower case; any special character. You need to fill at least one of the two fields.</small>
                
            <div class="row">
                <html:form action="loadFile" method="POST" enctype="multipart/form-data" onsubmit="return ValidateClassify()">
                   <html:hidden property="origen" value="0"></html:hidden>
                        <div class="row row-sm-offset">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-5-name">Surname</label>    
                                <html:text styleId="uSurname" property="uSurname" styleClass="form-control"/>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-5-email">Forename</label>
                                    <html:text styleId="uForename" property="uForename" styleClass="form-control" />
                                </div>
                            </div>
                        </div>
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-5-email">Age (optional)</label><br>
                                        <html:text styleId="uAge" property="uAge" size="5"  />
                                </div>
                                 <div class="form-group">
                                    <label class="form-control-label" for="form1-5-email">Gender (optional)</label>
                                    <html:select styleId="uGender" property="uGender" styleClass="form-control">
                                        <html:option value="Male">Male</html:option>
                                        <html:option value="Female">Female</html:option>
                                    </html:select>
                                </div>                               
                        <div>
                            <html:submit value="CLASSIFY" styleClass="btn btn-primary"/>
                        </div>
                    </html:form>
            </div>
            <div class="row-sm-offset">
                 Our classifier matches names data assembled by CDRC from consumer sources to survey data held securely by ONS. 
 Predicting ethnicity is not an exact science. Indeed some people share identical names despite having quite different ethnicities. 
We acknowledge this by reporting the three most likely estimated ethnicities for a name based on a likelihood score ranging from 0 to 1.
For example, the result <b>"White British (0.56); Black Caribbean (0.32); Pakistani (0.08)"</b> can be understood as
‘We think that there is a 56% chance that you describe yourself as White British, a 32% chance that you describe yourself as 
Black Caribbean and an 8% chance that you describe yourself as Pakistani (An alternative, frequentist, interpretation of the 
same numbers is that 56% of people who have your precise name describe themselves as White British, and so on. 
The numbers do not sum to unity if there is a residual possibility of membership of one or more other ethnic groups).
We can get things wrong and people themselves may see things differently. So we would really appreciate your feedback 
using the drop down menus provided. We have used a particular classification of ethnicity that is widely used by statistical 
agencies – but if you think this is unhelpful in any way please let us know this, too.  
            </div>
            <br>
            <div class="row-sm-offset">
                <input type="button" value="Code my dataset" class="btn-block" onclick="javascript:location.href='login.jsp'"></input>       
            </div>
        </div>
    </div>
</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2" style="background-color: rgb(50, 50, 50); padding-top: 1.75rem; padding-bottom: 1.75rem;">

    <div class="container">
        <p class="text-xs-center">Copyright (c) 2017 Consumer Research Data Centre.</p>
    </div>
</footer>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>


  <input name="animation" type="hidden">
  
</html:html>
