<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="Quiz_Intech.signuppage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div align="center" style="background-color: transparent; background-image: url('images\mw.jpg');">
    <html lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#" class="js js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths" style="height: 601px;"><head>
  <link rel="profile" href="http://www.w3.org/1999/xhtml/vocab">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="https://pracademics.in/sites/default/files/favicon.ico" type="image/vnd.microsoft.icon">
  <title>studio prAcademics</title>
  <style>
@import url("https://pracademics.in/modules/system/system.base.css?qy4ou6");
</style>
<style>
@import url("https://pracademics.in/modules/field/theme/field.css?qy4ou6");
@import url("https://pracademics.in/modules/node/node.css?qy4ou6");
@import url("https://pracademics.in/sites/all/modules/contrib/views/css/views.css?qy4ou6");
</style>
<style>
@import url("https://pracademics.in/sites/all/modules/contrib/ctools/css/ctools.css?qy4ou6");
</style>
<style>
@import url("https://pracademics.in/sites/all/themes/studioprac/css/reset.css?qy4ou6");
@import url("https://pracademics.in/sites/all/themes/studioprac/css/spcss.css?qy4ou6");
</style>
  <!-- HTML5 element support for IE6-8 -->
  <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
  <![endif]-->
  <script src="https://pracademics.in/sites/all/modules/contrib/jquery_update/replace/jquery/1.10/jquery.min.js?v=1.10.2"></script>
<script src="https://pracademics.in/misc/jquery-extend-3.4.0.js?v=1.10.2"></script>
<script src="https://pracademics.in/misc/jquery-html-prefilter-3.5.0-backport.js?v=1.10.2"></script>
<script src="https://pracademics.in/misc/jquery.once.js?v=1.2"></script>
<script src="https://pracademics.in/misc/drupal.js?qy4ou6"></script>
<script src="https://pracademics.in/sites/all/modules/contrib/admin_menu/admin_devel/admin_devel.js?qy4ou6"></script>
<script>jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"studioprac","theme_token":"92WPSpGOPvFXSW1A4LQkWTroHwrU1nIGSU__URO4NOM","js":{"sites\/all\/themes\/bootstrap\/js\/bootstrap.js":1,"sites\/all\/modules\/contrib\/jquery_update\/replace\/jquery\/1.10\/jquery.min.js":1,"misc\/jquery-extend-3.4.0.js":1,"misc\/jquery-html-prefilter-3.5.0-backport.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/contrib\/admin_menu\/admin_devel\/admin_devel.js":1},"css":{"modules\/system\/system.base.css":1,"modules\/field\/theme\/field.css":1,"modules\/node\/node.css":1,"sites\/all\/modules\/contrib\/views\/css\/views.css":1,"sites\/all\/modules\/contrib\/ctools\/css\/ctools.css":1,"sites\/all\/themes\/studioprac\/css\/reset.css":1,"sites\/all\/themes\/studioprac\/css\/spcss.css":1}},"bootstrap":{"anchorsFix":"0","anchorsSmoothScrolling":"0","formHasError":1,"popoverEnabled":1,"popoverOptions":{"animation":1,"html":0,"placement":"right","selector":"","trigger":"click","triggerAutoclose":1,"title":"","content":"","delay":0,"container":"body"},"tooltipEnabled":1,"tooltipOptions":{"animation":1,"html":0,"placement":"auto left","selector":"","trigger":"hover focus","delay":0,"container":"body"}}});</script>
<style id="smooth-scrollbar-style">
[data-scrollbar] {
  display: block;
  position: relative;
}

.scroll-content {
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
}

.scrollbar-track {
  position: absolute;
  opacity: 0;
  z-index: 1;
  background: rgba(222, 222, 222, .75);
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  -webkit-transition: opacity 0.5s 0.5s ease-out;
          transition: opacity 0.5s 0.5s ease-out;
}
.scrollbar-track.show,
.scrollbar-track:hover {
  opacity: 1;
  -webkit-transition-delay: 0s;
          transition-delay: 0s;
}

.scrollbar-track-x {
  bottom: 0;
  left: 0;
  width: 100%;
  height: 8px;
}
.scrollbar-track-y {
  top: 0;
  right: 0;
  width: 8px;
  height: 100%;
}
.scrollbar-thumb {
  position: absolute;
  top: 0;
  left: 0;
  width: 8px;
  height: 8px;
  background: rgba(0, 0, 0, .5);
  border-radius: 4px;
}
</style></head>
<body class="html front not-logged-in no-sidebars page-node" style="height: 601px;" data-new-gr-c-s-check-loaded="14.1100.0" data-gr-ext-installed="">
  <div id="skip-link">
    <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
  </div>
    <!--  /////////////////////////    -->
<!--  ////// Loader //////    -->
<!--  /////////////////////////    -->
<div id="sploader" class="is-hidden" style="transform: translate(0px, 0px); opacity: 0; visibility: hidden;">
    <div class="percentage">
      <div class="progress" style="transform: translate(0px, 0px); opacity: 0; visibility: hidden;"><span style="height: 100%;"></span></div>
    </div>
</div>

<div class="loading-logo fade">
  <div class="logo" style="opacity: 1; visibility: inherit;">
    <img src="https://pracademics.in/sites/all/themes/studioprac/img/logo_square.svg" alt="">
  </div>
  <div class="logo-name" style="opacity: 1; visibility: inherit;">
    <img src="https://pracademics.in/sites/all/themes/studioprac/img/logo-name.svg" alt="">
  </div>
</div>

<div class="loading-logo-mobile" style="opacity: 0; visibility: hidden; transform: translate(0px, 100px);">
  <img src="https://pracademics.in/sites/all/themes/studioprac/img/logo.svg" alt="">
</div>
   <!--  /////////////////////////    -->
   <!--  ////// Header //////    -->
   <!--  /////////////////////////    -->
<header class="">
    <div class="container-fluid">
      <div class="row">
          <div class="col-xs-6">
            <a href="javascript:void(0);" class="logo"><img src="https://pracademics.in/sites/all/themes/studioprac/img/logo.svg" alt="" class="brand-logo"></a>
            <a href="javascript:void(0);" class="logo-mobile"><img src="https://pracademics.in/sites/all/themes/studioprac/img/logo_square.svg" alt="" class="brand-logo"></a>
          </div>
          <div class="col-xs-6">
            <div class="nav-menu">
              <ul class="menu-effect">
                <li>
                    <a href="#we"><span data-hover="we">we</span></a>
                </li>
                <li>
                    <a href="#design"><span data-hover="design">design</span></a>
                </li>
                <li>
                    <a href="#spaces"><span data-hover="spaces">spaces</span></a>	
                </li>
              </ul>
            </div>
          </div>
      </div>
    </div>
</header>
<div class="project-loading" style="height: 601px;">
  <div class="project-loading-img" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/MONTE%209%5fIMPACT%203D3.jpg&quot;); height: 601px;"></div>
  <div class="loading-circle"></div>
</div>

<div id="sp-main_wrapper" style="height: 601px;">
  <div id="sp-main" style="height: 601px;">
  <!--  /////////////////////////    -->
  <!--  ////// Home Projectlist //////    -->
  <!--  /////////////////////////    -->
    <div class="sp-projects active" style="height: 601px;">
            <div class="sp-project hl sp-01 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/CASA%20Ampilio%5f%40%5fImpact%203D%20%284%29.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-01" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/CASA%20Ampilio%5f%40%5fImpact%203D%20%284%29.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="7" data-open="#sp-01">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">CASA AMPLIO</div>
        </div>
      </div>
            <div class="sp-project vl sp-02 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/Front%20View%20%20%281%29.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-02" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/Front%20View%20%20%281%29.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="6">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">SHIVAM ORBIT</div>
        </div>
      </div>
            <div class="sp-project hl sp-03 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/PNTC5.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-03" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/PNTC5.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="3">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">PRAHALADNAGAR TRADE CENTER (PNTC)</div>
        </div>
      </div>
            <div class="sp-project vl sp-04 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/Corner%20Night%20View.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-04" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/Corner%20Night%20View.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="12">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">SANIDHYA SKYROS</div>
        </div>
      </div>
            <div class="sp-project hl sp-05 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/9d474623-5077-4c8c-942f-d3b5623b4427.JPG');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-05" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/9d474623-5077-4c8c-942f-d3b5623b4427.JPG&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="2">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">MARINA-II</div>
        </div>
      </div>
            <div class="sp-project hl sp-06 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/2.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-06" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/2.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="16">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">HOUSE ON THE HILL</div>
        </div>
      </div>
            <div class="sp-project vl sp-07 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/gallery%5fzoom%5fimg18.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-07" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/gallery%5fzoom%5fimg18.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="1">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">CENTRAL BUSINESS DISTRICT (CBD)</div>
        </div>
      </div>
            <div class="sp-project vl sp-08 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/MONTE%209%5fIMPACT%203D3.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-08" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/MONTE%209%5fIMPACT%203D3.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="9">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">MONTE 9</div>
        </div>
      </div>
            <div class="sp-project hl sp-09 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/vv2%5ffront.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-09" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/vv2%5ffront.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="17">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">R. V. MALL</div>
        </div>
      </div>
            <div class="sp-project hl sp-10 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/ANANTA%20RAJESHBHAI%20%40%20IMPACT%203D%20%2811%29%5fOPTION.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-10" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/ANANTA%20RAJESHBHAI%20%40%20IMPACT%203D%20%2811%29%5fOPTION.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="14">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">ANANTA</div>
        </div>
      </div>
            <div class="sp-project vl sp-11 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/PHOTO-2018-10-12-19-57-44%20%281%29.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-11" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/PHOTO-2018-10-12-19-57-44%20%281%29.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="4">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">RASHMI GROWTH HUB</div>
        </div>
      </div>
            <div class="sp-project hl sp-12 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/layers%5fpage-0001%20%281%29.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-12" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/layers%5fpage-0001%20%281%29.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="18">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">HEDGEWAR BHAVAN</div>
        </div>
      </div>
            <div class="sp-project vl sp-13 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/Cam%5f01.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big vl sp-13" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/Cam%5f01.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="8">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">KARNAVATI SKYLANE</div>
        </div>
      </div>
            <div class="sp-project hl sp-14 loaded animate finish">
        <div class="helper"></div>
        <div class="sp-project-mask">
            <div class="sp-project-bg loadimg" style="background-image: url('https://pracademics.in/sites/default/files/featured_image/RASHMI%5fANTELIA%5fIMPACT3D%5f01.jpg');"></div>
        </div>
      </div>
      <div class="sp-project-bg-big hl sp-14" style="height: 601px;">
        <div class="sp-project-bg loadimg" style="background-image: url(&quot;https://pracademics.in/sites/default/files/featured_image/RASHMI%5fANTELIA%5fIMPACT3D%5f01.jpg&quot;); height: 601px;"></div>
        <div class="sp-project-title" id="19">
            <div class="arrow">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </div>
            <div class="title">RASHMI ANTELIA</div>
        </div>
      </div>
          </div>

    <div class="scroll-helper" id="scroll-helper"></div>

    <div class="pages" style="height: 601px;">
      <!--  /////////////////////////    -->
      <!--  ////// Project(spaces) List Page //////    -->
      <!--  /////////////////////////    -->
      <div id="scroll-container-spaces" class="page spaces-page" data-id="#spaces" data-scrollbar="true" tabindex="-1" style="overflow: hidden; outline: none; height: 601px;"><div class="scroll-content">
        <div class="spacer"></div>
        <div id="project-listing" class="sp-project-listing">  
        </div>
      </div><div class="scrollbar-track scrollbar-track-x show" style="display: none;"><div class="scrollbar-thumb scrollbar-thumb-x" style="width: 677px; transform: translate3d(0px, 0px, 0px);"></div></div><div class="scrollbar-track scrollbar-track-y show" style="display: none;"><div class="scrollbar-thumb scrollbar-thumb-y" style="height: 601px; transform: translate3d(0px, 0px, 0px);"></div></div></div>    

      <!--  /////////////////////////    -->
      <!--  ////// We Page //////    -->
      <!--  /////////////////////////    -->
      <div id="scroll-container-we" class="page we-page" data-id="#we" data-scrollbar="true" tabindex="-1" style="overflow: hidden; outline: none; height: 601px;"><div class="scroll-content" style="transform: translate3d(0px, -1px, 0px);">
        <div class="spacer"></div>
          <div class="container-fluid">
<div class="row">
<div class="col-sm-4">
<h2>about</h2>
</div>
<div class="col-sm-8">
<div class="content">
<p>
          studio prAcademics was founded by tejas kathiriya in 2007. today, its practice ranges from private residences and public buildings to interior architecture and real estate developments of urban scale. we at studio prAcademics have always believed that visualizing and building projects demand an efficient collaborative approach between architects and professionals from construction industry. we at our studio work extensively with varied consultants from design and engineering fields, integrating their collective skills to provide effective solutions, be it large scale real estate projects, institutions or private residences.
        </p>
</div>
</div>
</div>
</div>
<div class="parallax mt-100 mb-100">
<div class="parallax-img" style="background-image: url('img/08.jpg');">
  </div>
</div>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h2>team</h2>
</div>
<div class="col-sm-12">
<div class="team row">
<div class="teambox col-sm-3" style="transform: translate(0%, 327.18%) translate3d(0px, 0px, 0px);">
<h3>tejas kathiriya</h3>
<h6>principal architect</h6>
<p>b.arch, m.arch., m.urban design (italy)</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 338.986%) translate3d(0px, 0px, 0px);">
<h3>priya patel</h3>
<h6>sr. architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 349.818%) translate3d(0px, 0px, 0px);">
<h3>bhumin dhanani</h3>
<h6>sr. architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 362.235%) translate3d(0px, 0px, 0px);">
<h3>bhaskar patel</h3>
<h6>associate architect</h6>
<p>archigram, vidyanagar</p>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 336.72%) translate3d(0px, 0px, 0px);">
<h3>archie shah</h3>
<h6>architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 385.487%) translate3d(0px, 0px, 0px);">
<h3>ruta patel</h3>
<h6>architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 348.164%) translate3d(0px, 0px, 0px);">
<h3>akashi patel</h3>
<h6>architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 356.682%) translate3d(0px, 0px, 0px);">
<h3>rachit rawat</h3>
<h6>architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 387.822%) translate3d(0px, 0px, 0px);">
<h3>meenal dobariya</h3>
<h6>architect</h6>
<p>b.arch.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 375.019%) translate3d(0px, 0px, 0px);">
<h3>gaurang mistry</h3>
<h6>interior designer</h6>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 398.546%) translate3d(0px, 0px, 0px);">
<h3>anuj thakkar</h3>
<h6>intern architect</h6>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 360.718%) translate3d(0px, 0px, 0px);">
<h3>saumya daftari</h3>
<h6>intern architect</h6>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 318.77%) translate3d(0px, 0px, 0px);">
<h3>pallavi batra</h3>
<h6>intern architect</h6>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 344.788%) translate3d(0px, 0px, 0px);">
<h3>mrugesh panchal</h3>
<h6>interior supervisor</h6>
<p>over 15 year exp.</p>
</div>
<div class="teambox col-sm-3" style="transform: translate(0%, 381.889%) translate3d(0px, 0px, 0px);">
<h3>ashok vaghela</h3>
<h6>civil drafts man</h6>
<p>8 year exp.</p>
</div>
</div>
</div>
</div>
</div>
<div class="container-fluid pt-100 pb-100">
<div class="row">
<div class="col-sm-12">
<h2>contact</h2>
</div>
<div class="col-sm-12">
<div>
        <img src="img/logo_square.svg" class="flogo" alt=""><br>
        <img src="img/logo-name.svg" class="flogo" alt="">
      </div>
</div>
<div class="col-sm-3">
<div>
<address>
<p>1016, times square arcade-1,<br>
          opp. rambaug, thaltej-shilaj road,<br>
          thaltej, ahmedabad, gujarat - 380 059</p>
</address>
</div>
</div>
<div class="col-sm-3 col-sm-offset-3">
<div>
<p>
          (e) <a href="mailto:mail@prAcademics.in">mail@prAcademics.in</a><br>
          (o) <a href="tel:079 40371711">079 40371711</a>
        </p>
</div>
</div>
</div>
</div>
      </div><div class="scrollbar-track scrollbar-track-x show" style="display: none;"><div class="scrollbar-thumb scrollbar-thumb-x" style="width: 677px; transform: translate3d(0px, 0px, 0px);"></div></div><div class="scrollbar-track scrollbar-track-y show" style="display: block;"><div class="scrollbar-thumb scrollbar-thumb-y" style="height: 99.0677px; transform: translate3d(0px, 0.164838px, 0px);"></div></div></div>

      <!--  /////////////////////////    -->
      <!--  ////// Design(philosophy) Page //////    -->
      <!--  /////////////////////////    -->

      <div id="scroll-container-design" class="page design-page" data-id="#design" data-scrollbar="true" tabindex="-1" style="overflow: hidden; outline: none; height: 601px;"><div class="scroll-content" style="transform: translate3d(0px, -1px, 0px);">
        <div class="spacer"></div>
          <div class="container-fluid">
<div class="row">
<div class="col-sm-4">
<h2>philosophy</h2>
</div>
<div class="col-sm-8">
<div class="content">
<p>since its inception, we at studio prAcademics are focused on keen perspective of interweaving academic hypothesis with professional practice and vice versa . pragmatic solutions to the design issues remain the foremost criteria of our seasoned practice, efforts of merging art with built spaces with honest aesthetic has always managed to form a background in design development.</p>
<p>
          once a building is completed, we walk out of the building for the last time, we know our work has come to an end. that is the beginning of real purpose of creating architecture. a new set of people will take over the spaces once you have canvassed, with acute sense of ownership and emotional bonding. this process is more unpredictable and complex than the real art of construction. we design every piece of architecture for the later process. we engage our skills to merge the new set of authors and protagonists with their living and working environment effectively and efficiently. we constantly thrive to meet the corners of vitruvius' triangle : firmitas , utilitas e venustas. (firm, functional &amp; beautiful)
        </p>
</div>
</div>
</div>
</div>
<div class="parallax mt-100 mb-100">
<div class="parallax-img" style="background-image: url('img/10.jpg');"></div>
</div>
      </div><div class="scrollbar-track scrollbar-track-x show" style="display: none;"><div class="scrollbar-thumb scrollbar-thumb-x" style="width: 677px; transform: translate3d(0px, 0px, 0px);"></div></div><div class="scrollbar-track scrollbar-track-y show" style="display: block;"><div class="scrollbar-thumb scrollbar-thumb-y" style="height: 298.267px; transform: translate3d(0px, 0.496284px, 0px);"></div></div></div>
    </div>

    <!--  /////////////////////////    -->
    <!--  ////// Project Detail Page //////    -->
    <!--  /////////////////////////    -->
    <div class="closebtn">
      <svg xmlns="http://www.w3.org/2000/svg" width="19.092" height="19.092" viewBox="0 0 19.092 19.092">
        <path d="M-6052.454-1189.04l-8.131,8.132-1.415-1.415,8.132-8.131-8.132-8.132,1.415-1.413,8.131,8.131,8.132-8.131,1.414,1.413-8.131,8.132,8.131,8.131-1.414,1.415Z" transform="translate(6062 1200)" fill="#fff"></path>
      </svg>
    </div><div id="scroll-container-spacesdetail" class="spacesdetail-page" style="height: 601px;"></div>
    

  </div>
</div>
<script src="https://pracademics.in/sites/all/themes/studioprac/js/plugin.js"></script>
<script src="https://pracademics.in/sites/all/themes/studioprac/js/spscript.js"></script>
  <script src="https://pracademics.in/sites/all/themes/bootstrap/js/bootstrap.js?qy4ou6"></script>


</body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>
    <div class="loading-circle"></div>
          </div>
      </asp:Content>
