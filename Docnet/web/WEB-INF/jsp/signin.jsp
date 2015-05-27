v<!DOCTYPE html>


     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en-US">
   <head>
       
      <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>DOCNET</title>
      <!-- Bootstrap core CSS -->
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,700,400,300' rel='stylesheet' type='text/css'/>
      
    <link href="<c:url value="/resource/css/bootstrap.css" />" rel="stylesheet" type="text/css" />
      
      <!-- Bootstrap theme -->
      <link href="<c:url value="/resource/css/bootstrap-theme.css" />" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
      
      <!-- Custom styles for this template -->
      <link href="<c:url value="/resource/css/jquery-ui.css" />" rel="stylesheet" />
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet" type="text/css" />
      <link href="<c:url value="/resource/css/font-awesome.min.css" />" rel="stylesheet">
      <link href="<c:url value="/resource/css/melon.datepicker.css" />" rel="stylesheet" type="text/css"/>
      <link href="<c:url value="/resource/css/selectbox.css" />" rel="stylesheet"/>
      <link href="<c:url value="/resource/css/star-rating.css" />" rel="stylesheet" media="all" type="text/css"/>
      <link href="<c:url value="/resource/css/theme.css" />" rel="stylesheet" type="text/css">
          <link href="<c:url value="/resource/css/owl.carousel.css" />" rel="stylesheet" type="text/css">
	
      <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --><!--[if lt IE 9]><script type="text/javascript" src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script type="text/javascript" src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
   </head>
  <body>
      
      <div class="navbar navbar-default" role="navigation">
   <div class="container">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand media" href="index.html"><span class="pull-left media"><span class="fa fa-lg fa-plus"></span></span><span class="media-body"><b class="site_title">DOCNET</b></span></a><!-- /.navbar-brand.media -->
         <form action="index.html#" class="navbar-form hidden-md hidden-xs hidden-lg visible-sm">
            <div class="input-group header-search">
               <div class="input-group-btn"><button class="btn btn-info"><span class="fa fa-search medical_search"></span></button></div>
               <input type="search" value="Search on website" onfocus="if ( this.value == 'Search on website' ) { this.value = ''; }" onblur="if ( this.value == '' ) { this.value = 'Search on website'; }" class="search-query" />
               <div class="input-group-btn"><button type="reset" class="btn btn-info reset"></button></div>
            </div>
            <!-- /.header-search -->
         </form>
         <!-- /.navbar-form.visible-sm -->
         <table class="header-info hidden-xs hidden-sm">
            <tr>
               <td class="description">Find a Doctor<br>Book an Appointment</td>
               <td class="phone">(+92) 321 6664513</td>
            </tr>
         </table>
         <!-- /.header-info -->
         <!-- /.navbar-form hidden-sm -->
      </div>
      <!--.navbar-header-->
   </div>
   <!--.container-->
   <nav class="nav main-menu">
      <div class="container">
        
        
         <!-- /.modal -->
         
         <!-- /.modal -->
         <div class="navbar-collapse collapse top-menu">
            <ul class="nav navbar-inner navbar-nav navbar-left">
               <li class="active"><a href="home.htm">Home</a></li>
               <li><a href="about.htm">About</a></li>
               <li><a href="services.htm">Services</a></li>
               <li role="presentation"><a role="menuitem" tabindex="-1" href="our_staff-v2.htm">Our staff</a></li>
               <li role="presentation"><a role="menuitem" tabindex="-1" href="blog-sidebar-v1.htm">Blog</a></li>
               <li><a href="contact_us.htm">Contact</a></li>
            </ul>
         </div>
         <!--/.nav-collapse -->
      </div>
      <!--.container-->
   </nav>
   <!--/.navbar-default-->
</div>
      
      <br>

    <div class="container">

        <button class="btn btn-primary" type="submit">Re-enter CNIC and Password</button>
         <form:form method="POST" commandName="verify" class="form-signin">


          <div class="form-group">

              <br>
              <label for="CNIC" class="sr-only">CNIC</label>
          <spring:bind path ="l3">
          <input type="text" id="inputEmail" style="width:50%" class="form-control" placeholder="CNIC"  name ="${status.expression}" value ="${status.value}" required autofocus >
          </spring:bind>
          </div>

          <div class="form-group">
          <label for="Password" class="sr-only">PASSWORD</label>
              <spring:bind path ="s7">
                   <input type="password" id="inputPassword" style="width:50%"  class="form-control" placeholder="Password"  name ="${status.expression}" value ="${status.value}" >
              </spring:bind>  
          </div>

               <button class="btn btn-primary" type="submit">Sign In</button>


                        
                         

                              
                         
          </form:form>
      
          
    </div> <!-- /container -->

    <br>
    <div class="mastfoot">
            <div class="container">
               <div class="footer row top">
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Menu</h4>
                     <ul>
                        <li class="page_item"><a href="index.html">Home</a></li>
                        <li class="page_item"><a href="about.htm">About</a></li>
                        <li class="page_item"><a href="services.html">Services</a></li>
                     </ul>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-4">
                     <h4 class="widget-title">About</h4>
                     <div class="textwidget">Medical Care Clinic. We will take care of you. <br>Monday - Saturday 09:00 am - 09:00 pm</div>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Recent tweets</h4>
                     <div class="recent_tweets footer-widget-single">
                        <a href="index.html#" title="">@bestwebsoft</a> The wise man therefore always holds in these matters to this principle.
                        <div class="recent_tweets_time">15 minutes ago</div>
                     </div>
                  </aside>
                  <aside class="widget col-sm-6 col-xs-12 col-md-3">
                     <h4 class="widget-title">Location</h4>
                     <div class="textwidget">
                        <address>322 Broadway <br/>New York, NY 10038</address>
                        <a href="tel:5557771100">P.: (555) 777 - 11 - 00</a><br/><a href="mailto:sales@bestwebsoft.com">E.: sales@bestwebsoft.com</a>
                     </div>
                  </aside>
               </div>
               <div class="clear"></div>
               <div class="footer row bottom">
                  <p class="footer-credits hidden-xs">Designed with love by <a href="../../bestwebsoft_default.html">BestWebSoft</a></p>
                  <div class="footer social">
                     <div class="custom-facebook-button"><a class="facebook-button fa fa-lg fa-facebook" title="Share on Facebook" rel="me" href="https://www.facebook.com/sharer.php?app_id=12345678903&amp;u=http://www.bestwebsoft.com&amp;t=Next-gen+OpenGL+initiative+announced%2C+bridging+desktop+and+mobile+APIs"></a></div>
                     <div class="custom-linkedin-button"><a class="linkedin-button fa fa-lg fa-linkedin" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=YourURL&amp;title=TheTitleOfYourWebPageGoesHere&amp;summary=TheSummaryOfYourWebPageGoesHere&amp;source=TheNameOfYourSiteGoesHere" rel="nofollow" onclick="NewWindow(this.href,'template_window','32','32','yes','center');return false" target="_blank" onfocus="this.blur()"></a></div>
                     <div class="custom-tweet-button"><a class="twitter-button fa fa-lg fa-twitter" href="https://twitter.com/share?url=https%3A%2F%2Fdev.twitter.com%2Fpages%2Ftweet-button" target="_blank"></a></div>
                  </div>
               </div>
            </div>
         </div>

     <script type = "text/javascript" src="<c:url value="/resource/js/jquery.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery.ikSelect.min.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/jquery-ui.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/owl.carousel.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/script.js" />"></script>
       <script type = "text/javascript" src="<c:url value="/resource/js/star-rating.min.js" />"></script>

      
            
            
   
    </body>
</html>
