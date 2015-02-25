<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<dnn:jQuery runat="server" jQueryUI="true" DnnjQueryPlugins="true" jQueryHoverIntent="true"></dnn:jQuery>
<dnn:STYLES runat="server" ID="StylesIE8" Name="IE8Minus" StyleSheet="css/ie8style.css" Condition="IE 8" UseSkinPath="true" />
<dnn:Meta runat="server" Name="viewport" Content="width=device-width, minimum-scale=1.0, maximum-scale=2.0" />
<div id="ControlPanelWrapper">
  <dnn:CONTROLPANEL runat="server" id="cp" IsDockable="True" />
</div>
<div class="skin_wrapper unique_skin">
  <!--start skin top-->
  <section class="skin_top">
    <div class="skin_width clearafter">
      <!--start user bar-->
      <div class="user_bar clearafter">
        <div class="search_style"> <a class="search_button" title="Open Search"><span></span></a> <a class="search_button_close" title="Close Search"><span></span></a> </div>
        <div id="Search">
          <div class="search_position">
            <dnn:SEARCH runat="server" id="dnnSEARCH" cssClass="searchcss" showWeb="false" showSite="false" UseDropdownlist="false" />
          </div>
        </div>
        <div class="language_position">
          <dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" />
        </div>
        <%If not Request.IsAuthenticated Then%>
        <div class="user_style">
          <dnn:USER runat="server" id="dnnUSER" cssclass="User" />
          <dnn:LOGIN runat="server" id="dnnLOGIN" cssclass="Login" />
        </div>
        <% End If%>
        <%If Request.IsAuthenticated Then%>
        <div id="Login">
          <dnn:USER runat="server" id="dnnUSER2" LegacyMode="false" />
          <dnn:LOGIN runat="server" id="dnnLOGIN2" LegacyMode="false" />
        </div>
        <% End If%>
      </div>
      <!--end user bar-->
      <div class="headerpane_style">
        <div runat="server" id="HeaderPane" class="headerpane"></div>
      </div>
    </div>
  </section>
  <!--end skin top-->
  <!--start skin header-->
  <section class="header_bg">
    <header id="skin_header">
      <div class="skin_width">
        <div class="skin_header_style clearafter">
          <div class="logo_style">
            <!--site logo-->
            <div class="site_logo">
              <dnn:LOGO runat="server" id="dnnLOGO" />
            </div>
            <!--mobile menu button-->
            <div class="mobile_nav"><a href="#" class="menuclick"><img alt="Menu" class="click_img" src="<%=SkinPath %>images/blank.gif" /></a></div>
          </div>
          <!--start skin menu-->
          <nav class="menu_box">
            <dnn:MENU MenuStyle="MegaMenu" runat="server"> </dnn:MENU>
          </nav>
          <!--end skin menu-->
        </div>
      </div>
    </header>
  </section>
  <!--end skin header-->
  <!--start page name-->
  <section class="page_name">
    <div class="skin_width pagename_style">
      <h1><%=PortalSettings.ActiveTab.TabName %></h1>
      <div class="breadcrumb_style">
        <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB" Separator="&nbsp;&nbsp;/&nbsp;&nbsp;" cssclass="Breadcrumb" RootLevel="0" />
      </div>
    </div>
  </section>
  <!--end page name-->
  <!--start main area-->
  <div class="skin_main">
    <section class="content_whitebg">
      <div class="skin_width">
        <div class="socialprofile_content">
          <div class="threeColSocial">
            <div id="leftPane" class="SocialLeftPane" runat="server"></div>
            <div id="centerPane" class="SocialCenterPane" runat="server"></div>
            <div id="rightPane" class="SocialRightPane" runat="server"></div>
            <div class="clear"></div>
          </div>
          <div id="ContentPane" runat="server"></div>
        </div>
      </div>
    </section>
  </div>
  <!--start footer top-->
  <section class="footer_top">
    <div class="skin_width">
      <div class="footerpane_style">
        <div class="row dnnpane">
          <div runat="server" id="FooterGrid3A" class="footer_grid3a col-sm-3"></div>
          <div runat="server" id="FooterGrid3B" class="footer_grid3b col-sm-3"></div>
          <div runat="server" id="FooterGrid3C" class="footer_grid3c col-sm-3"></div>
          <div runat="server" id="FooterGrid3D" class="footer_grid3d col-sm-3"></div>
        </div>
        <div class="row dnnpane">
          <div runat="server" id="FooterPane" class="footerpane col-sm-12"></div>
        </div>
      </div>
    </div>
  </section>
  <!--end footer top-->
  <!--start footer-->
  <footer class="copyright_bg">
    <div class="skin_width">
      <div class="copyright_bar clearafter">
        <div class="footer_left">
          <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" cssclass="Footer" />
        </div>
        <div class="footer_right">
          <dnn:PRIVACY runat="server" id="dnnPRIVACY" cssclass="Footer" />
          |
          <dnn:TERMS runat="server" id="dnnTERMS" cssclass="Footer" />
        </div>
      </div>
    </div>
  </footer>
  <!--end footer-->
  <a href="#top" id="top-link" title="Top"> </a> </div>
<!--#include file="commonparts/StyleCustom.ascx"-->
<!--#include file="commonparts/AddScripts.ascx"-->
