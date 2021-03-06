<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON" Src="~/Admin/Containers/ActionButton.ascx" %>

<div class="Gray03_style">
  <div class="Gray03_top_bg">
    <div class="c_icon">
      <dnn:ICON runat="server" id="dnnICON" />
    </div>
    <div class="c_title">
      <h2 class="c_titles">
        <dnn:TITLE runat="server" id="dnnTITLE"  CssClass="c_title_white" />
      </h2>
    </div>
    <div class="Gray03_c_menu">
      <dnn:ACTIONS runat="server" id="dnnACTIONS"  ProviderName="DNNMenuNavigationProvider" ExpandDepth="1" PopulateNodesFromClient="True" />
    </div>
    <div class="Gray03_c_help">
      <dnn:ACTIONBUTTON runat="server" id="dnnACTIONBUTTON5" CommandName="ModuleHelp.Action" DisplayIcon="True" DisplayLink="False" />
    </div>
	 <div class="Gray03_head_bg"></div>
    <div class="clear_float"></div>
  </div>
  <div class="Gray03_shadow_l">
    <div class="Gray03_shadow_r">
	  <div class="Gray03_shadow_c"></div>
	</div>
  </div>
  <div class="c_content_style">
    <div id="ContentPane" runat="server" class="Gray03_content"></div>
  </div>
  <div class="c_footer">
    <div class="c_footer_l">
      <dnn:ACTIONBUTTON runat="server" ID="dnnACTIONBUTTON1" CommandName="AddContent.Action" DisplayIcon="True" DisplayLink="True" />
    </div>
    <div class="c_footer_r">
      <dnn:ACTIONBUTTON runat="server" ID="dnnACTIONBUTTON2" CommandName="SyndicateModule.Action" DisplayIcon="True" DisplayLink="false" />
      <dnn:ACTIONBUTTON runat="server" id="dnnACTIONBUTTON3" CommandName="PrintModule.Action" DisplayIcon="True" DisplayLink="False" />
      <dnn:ACTIONBUTTON runat="server" ID="dnnACTIONBUTTON4" CommandName="ModuleSettings.Action" DisplayIcon="True" DisplayLink="false" />
    </div>
    <div class="clear_float"></div>
  </div>
  <div class="Gray03_footer"></div>
</div>
