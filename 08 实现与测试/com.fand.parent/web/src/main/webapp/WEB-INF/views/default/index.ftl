<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    
    <title>方道门户系统</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="方道门户系统">
    <meta name="author" content="yaoht">

    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css"/>
    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/css/font-awesome.min.css"/>
    <!--[if IE 7]>
    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->
    <!--[if lt IE 9]>
    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/css/custom-theme/jquery.ui.1.10.0.ie.css"/>
    <![endif]-->
    <link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.css"/>
	<link type="text/css" rel="stylesheet" href="<@spring.url ""/>/resources/views/default/index.css"/>
    
    <script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/js/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/js/jquery-ui-1.10.0.custom.min.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/js/google-code-prettify/prettify.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/assets/js/docs.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/third-party/wijmo/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/widget/jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.min.js"></script>
	<script type="text/javascript" src="<@spring.url ""/>/resources/views/default/index.js"></script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#"><@fand.defaultIfBlank '','fand' /></a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
<#assign content = "沟通：沟通内容:eeeeeeeeee">
<#if fand.StringUtils.IfBlank(content)>
<@fand.defaultIfBlank content, '&nbsp;' />
<#elseif fand.StringUtils.startsWith(content, "沟通：")> 
${fand.StringUtils.substring(content, 3)}
<#else><@fand.defaultIfBlank content, '&nbsp;' /></#if>
              Logged in as <a href="#" class="navbar-link">Username</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a href="#" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div><!--/.fluid-container-->
</body>
</html>