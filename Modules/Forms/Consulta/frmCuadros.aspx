<%@ Page Language="C#" MasterPageFile="~/Modules/MasterPage.Master" AutoEventWireup="true" 
    CodeBehind="frmCuadros.aspx.cs" Inherits="InfoGesRegional.Modules.Forms.Consulta.frmCuadros" 
    Title="InfoGesConsultas" %>



    
<%@ Register assembly="DevExpress.XtraCharts.v13.1.Web, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxClasses" tagprefix="dxw" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTabControl" tagprefix="dxtc" %>        

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid.Export" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 298px;
        }
        .style9
        {
            width: 395px;
        }
        .style10
        {
            width: 522px;
        }
        .style11
        {
            width: 261px;
        }
        .style12
        {
            width: 273px;
        }
        .style13
        {
            width: 522px;
            height: 51px;
        }
        .style14
        {
            width: 395px;
            height: 51px;
        }
        .style15
        {
            width: 298px;
            height: 51px;
        }
        .style16
        {
            width: 261px;
            height: 51px;
        }
        .style17
        {
            width: 273px;
            height: 51px;
        }
        .style18
        {
            width: 737px;
        }
        .style19
        {
            width: 310px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

<table>
<tr>
<td>
<table><tr>
<td class="style19">
<dxtc:ASPxTabControl ID="ASPxTabControleJEjecutora" runat="server" AutoPostBack="True" 
        DataSourceID="XmlDataSource2"  
        OnActiveTabChanged="ASPxPageControl1_ActiveTabChanged1"
        ActiveTabStyle-Font-Size="Large" TabStyle-Wrap="True" Width="248px" 
        CssFilePath="~/App_Themes/Glass/Web/styles.css" CssPostfix="Glass" >
<Paddings Padding="0" />

<ActiveTabStyle Font-Size="Large" Wrap="True"></ActiveTabStyle>

<TabStyle Wrap="True"></TabStyle>
    </dxtc:ASPxTabControl>
<asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile=""  XPath="//ejecutora" EnableCaching="false"></asp:XmlDataSource>
</td>
</tr>
<tr>
<td align="left" class="style18">
<dxtc:ASPxTabControl ID="tcDemos" runat="server" DataSourceID="XmlDataSource1"  AutoPostBack="true" 
        OnActiveTabChanged="ASPxPageControl1_ActiveTabChanged" 
        ActiveTabStyle-Font-Size="XX-Large" TabIndex="0" CssFilePath="~/App_Themes/Glass/Web/styles.css" 
        CssPostfix="Glass" EnableDefaultAppearance="False" RightToLeft="True"  Width="1200px" EnableTabScrolling="true">
<Paddings Padding="0" />
    </dxtc:ASPxTabControl>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile=""  XPath="//product"  ></asp:XmlDataSource>
</td>
</tr></table>
</td>
</tr>
<tr>
<td align="center">
<table style="width: 1217px"  >
<tr>
<td class="style13" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="PRESUPUESTO(PIM)" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Bold="False">
    </dx:ASPxLabel>
</td>
<td class="style14" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="COMPROMISO" 
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin"  Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Bold="False">
    </dx:ASPxLabel>
</td>
<td  class="style15" align="right" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="DEVENGADO" 
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin"  Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Bold="False">
    </dx:ASPxLabel>

</td>
<td align="left" class="style16" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="   (%)" 
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin"  Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Bold="False">
    </dx:ASPxLabel>
</td>
<td class="style17" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="GIRADO" 
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin"  Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Bold="False">
    </dx:ASPxLabel>
</td>
</tr>
<tr>
<td class="style10" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLbPresupuesto" runat="server" Text="ASPxLabel"  
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Underline="True" Font-Bold="True">
    </dx:ASPxLabel>
</td>
<td class="style9" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLbCompromiso" runat="server" Text="ASPxLabel"  
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Underline="True" Font-Bold="True" 
        Font-Italic="False">
    </dx:ASPxLabel>
</td>
<td class="style8" align="right" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLbDevengado" runat="server" Text="ASPxLabel"  
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Underline="True" Font-Bold="True">
    </dx:ASPxLabel>
</td>
<td align="left" class="style11" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxPorcentaje" runat="server" Text="ASPxLabel"  
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Underline="True" Font-Bold="True">
    </dx:ASPxLabel>
</td>
<td align="left" class="style12" bgcolor="#E2F1FE">
    <dx:ASPxLabel ID="ASPxLbGirado" runat="server" Text="ASPxLabel"  
        CssFilePath="~/App_Themes/Glass/ASPxLabel.skin" Font-Size="X-Large" 
        Font-Names="Times New Roman" Font-Underline="True" Font-Bold="True">
    </dx:ASPxLabel>
</td>

</tr>
</table>
</td>
</tr>





<tr>
<td>
    <ContentTemplate>

        <dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" 
        ActiveTabIndex="0" CssFilePath="~/App_Themes/Glass/Editors/styles.css" 
            CssPostfix="Glass" Height="300%" LoadingPanelText="" TabSpacing="3px" 
        Width="1079px" >
			<ContentStyle VerticalAlign="Top">
			<Border BorderColor="#AECAF0" BorderStyle="Solid" BorderWidth="1px" />
            <Border BorderStyle="Solid" BorderColor="#AECAF0" BorderWidth="1px"></Border>
			</ContentStyle>     
			<ActiveTabStyle Font-Bold="True" Font-Size="Small">
			</ActiveTabStyle>                        
			<TabPages >   
				<dxtc:TabPage Text="Graficos" >
					<ContentCollection>
						<dxw:ContentControl ID="ContentControl13" runat="server">						
								
		
	                            <table title="verde">
<tr valign="top">
<td>
<table title="rojo1">
<tr valign="top">
<td align="center">
<table title="celeste1">
<tr>
<td>
<dxchartsui:webchartcontrol  ID="WebChartControlGastoG"  runat="server" ToolTipEnabled="False"
            CrosshairEnabled="false" Height="440px" SideBySideEqualBarWidth="True" 
            Width="620px" >
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>

<SeriesTemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>
</dxchartsui:webchartcontrol>
</td>
<td>
<dxchartsui:webchartcontrol  ID="WebChartControlFteFto" runat="server" 
    ToolTipEnabled="false" ClientInstanceName="chart"
            CrosshairEnabled="True" Height="440px" 
    SideBySideEqualBarWidth="True" OnObjectSelected="WebChartControl1_ObjectSelected"
            Width="620px" LoadingPanelStyle-Wrap="Default" 
    Font-Names="Tahoma, 8pt, style=Bold" 
    CssFilePath="~/App_Themes/Glass/Web/styles.css" CssPostfix="Glass">

<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>

<SeriesTemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>

</dxchartsui:webchartcontrol>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>

<tr>
<td align="center">
<table>
<tr>
<td>
<dxchartsui:webchartcontrol  ID="WebChartControlFuncion" runat="server"
            CrosshairEnabled="True" Height="440px" SideBySideEqualBarWidth="True" 
            Width="620px" CssFilePath="~/App_Themes/Glass/Web/styles.css" 
    CssPostfix="Glass">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>

<SeriesTemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>
</dxchartsui:webchartcontrol>
</td>
<td>
<dxchartsui:webchartcontrol  ID="WebChartControlProgramaPpto" runat="server"  ToolTipEnabled="False"
            CrosshairEnabled="True" Height="440px" 
    SideBySideEqualBarWidth="True"   OnObjectSelected="WebChartControl1_ObjectSelected"
            Width="620px"  LoadingPanelStyle-Wrap="Default" 
    Font-Names="Tahoma, 8pt, style=Bold" 
    CssFilePath="~/App_Themes/Glass/Web/styles.css" CssPostfix="Glass">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>

<SeriesTemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>
</dxchartsui:webchartcontrol>
</td>
</tr>
</table>
</td>
</tr>

<tr>
<td>
<table>
<tr valign="top" align="center">
<td>
<dxchartsui:webchartcontrol  ID="WebChartControlPieUbigeo" runat="server"  ToolTipEnabled="False"
            CrosshairEnabled="True"  SideBySideEqualBarWidth="True"  OnObjectSelected="WebChartControl1_ObjectSelected" 
Height="413px" Width="776px"  LoadingPanelStyle-Wrap="Default" 
    Font-Names="Tahoma, 8pt, style=Bold" 
    CssFilePath="~/App_Themes/Glass/Web/styles.css" CssPostfix="Glass" >
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>

<SeriesTemplate><ViewSerializable>
<cc1:SideBySideBarSeriesView></cc1:SideBySideBarSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:SideBySideBarSeriesLabel LineVisible="True">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
<PointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</PointOptionsSerializable>
</cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PointOptions></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>
</dxchartsui:webchartcontrol>
</td>
</tr>
</table>
</td></tr>
<tr>
<td>
<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" 
CrosshairEnabled="True" DataSourceID="ASPxPivotGrid1" EnableViewState="False" 
Height="200px" SideBySideEqualBarWidth="True" Width="300px" 
    AppearanceNameSerializable="Pastel Kit" Visible="false" 
        SeriesDataMember="Series">
<FillStyle><OptionsSerializable>
<cc1:SolidFillOptions />
</OptionsSerializable>
</FillStyle>

<CrosshairOptions><CommonLabelPositionSerializable>
<cc1:CrosshairMousePosition></cc1:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</CrosshairOptions>

<ToolTipOptions><ToolTipPositionSerializable>
<cc1:ToolTipMousePosition></cc1:ToolTipMousePosition>
</ToolTipPositionSerializable>
</ToolTipOptions>
<diagramserializable>
    <cc1:SimpleDiagram EqualPieSize="False">
    </cc1:SimpleDiagram>
</diagramserializable>

<legend AlignmentHorizontal="Center" AlignmentVertical="BottomOutside" 
    MaxVerticalPercentage="30"></legend>

<SeriesTemplate argumentdatamember="Arguments" argumentscaletype="Qualitative" 
    valuedatamembersserializable="Values" synchronizepointoptions="False"><ViewSerializable>
    <cc1:PieSeriesView RuntimeExploding="False">
        <titles>
            <cc1:SeriesTitle />
        </titles>
    </cc1:PieSeriesView>
</ViewSerializable>
<LabelSerializable>
<cc1:PieSeriesLabel LineVisible="True" Position="TwoColumns">
    <fillstyle>
        <optionsserializable>
            <cc1:SolidFillOptions />
        </optionsserializable>
    </fillstyle>
    <pointoptionsserializable>
        <cc1:PiePointOptions>
            <valuenumericoptions format="Number" />
<ValueNumericOptions Format="Number"></ValueNumericOptions>
        </cc1:PiePointOptions>
    </pointoptionsserializable>
</cc1:PieSeriesLabel>
</LabelSerializable>
<LegendPointOptionsSerializable>
<cc1:PiePointOptions PointView="Argument">
    <valuenumericoptions format="Number" />
<ValueNumericOptions Format="Number"></ValueNumericOptions>
</cc1:PiePointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<titles>
    <cc1:ChartTitle />
</titles>

</dxchartsui:WebChartControl>
<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" Visible="false">
</dx:ASPxPivotGrid>
<asp:AccessDataSource ID="AccessDataSource1" runat="server">
</asp:AccessDataSource>
</td>
</tr>
</table>    
    	
		
		
						</dxw:ContentControl>
					</ContentCollection>
				</dxtc:TabPage>   
				<dxtc:TabPage Text="Resumen" >
					<ContentCollection>
						<dxw:ContentControl ID="ContentControl1" runat="server">	
                            <table>
                            <tr><td align="center">
                                    <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="ESTADO SITUACIONAL DEL PRESUPUESTO" Font-Size="Large" Font-Underline="true" 
                                        Font-Names="Times New Roman" Font-Bold="False">
                                    </dx:ASPxLabel> 
                            </td>
                            </tr>
                            <tr><td>
                                <table>
                                <tr>
                                <td align="center">
                                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="PRESUPUESTO" Font-Size="Large" 
                                        Font-Names="Times New Roman" Font-Bold="False">
                                    </dx:ASPxLabel>
                                </td>
                                <td  align="center">
                                     <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="EJECUCION" Font-Size="Large" 
                                        Font-Names="Times New Roman" Font-Bold="False">
                                    </dx:ASPxLabel>                                           
                                </td>
                                </tr>
                                <tr valign="top">
                                <td align="center">
                                <dx:ASPxPivotGrid ID="ASPxPivotGridPresupuesto" runat="server" Visible="true" Font-Size="X-Small" 
                                onLoad="LoadASPxPivotGridPresupuesto" ClientIDMode="AutoID"  EnablePagingGestures="False"  >
                                <OptionsView ShowHorizontalScrollBar="True" ShowDataHeaders="False" ShowColumnHeaders="False" ShowRowHeaders="False"
                                            ShowFilterHeaders="False" ShowColumnGrandTotalHeader="False" ShowRowTotals="False" ShowColumnGrandTotals="True"/>
                                <Fields>
                                    <dx:PivotGridField Area="RowArea" AreaIndex="1" FieldName="ANO_EJE" 
                                            Caption="PERIODO" ID="IdAnoEje"  
                                            HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                            Options-AllowSort="False" HeaderStyle-Wrap="True">
                                    </dx:PivotGridField>
                                    <dx:PivotGridField Area="DataArea" AreaIndex="1" FieldName="PIA" 
                                            Caption="PIA" ID="IdPia"  
                                            HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                            Options-AllowSort="False" >
                                    </dx:PivotGridField> 
                                    <dx:PivotGridField Area="DataArea " AreaIndex="2" FieldName="MODIFICACION" 
                                            Caption="MODIFICACION" ID="IdModificacion"  
                                            HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                            Options-AllowSort="False" >
                                    </dx:PivotGridField> 
                                    <dx:PivotGridField Area="DataArea " AreaIndex="3" FieldName="PIM" 
                                            Caption="PIM" ID="PivotGridField1"  
                                            HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                            Options-AllowSort="False" >

                                    </dx:PivotGridField>                                      
                                </Fields>
                                </dx:ASPxPivotGrid>
                                </td>
                                <td>

                                     <dx:ASPxPivotGrid ID="ASPxPivotGridEjecucion" runat="server" Visible="true" Font-Size="X-Small"
                                    onLoad="LoadASPxPivotGridEjecucion" ClientIDMode="AutoID"  EnablePagingGestures="False" Width="800px"  >
                                    <OptionsView ShowHorizontalScrollBar="True" ShowDataHeaders="False" ShowColumnHeaders="False" ShowRowHeaders="False"
                                                ShowFilterHeaders="False" ShowColumnGrandTotals="False" />
                                    <Fields>
                                        <dx:PivotGridField Area="RowArea" AreaIndex="1" FieldName="ANO_EJE" 
                                                Caption="PERIODO" ID="PivotGridField2"  
                                                HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                                Options-AllowSort="False" HeaderStyle-Wrap="True">

                                        </dx:PivotGridField>
                                        <dx:PivotGridField Area="ColumnArea" AreaIndex="1" FieldName="MES_EJE" 
                                                Caption="MES" ID="PivotGridField3"  
                                                HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                                Options-AllowSort="False" >
                                        </dx:PivotGridField> 
                                        <dx:PivotGridField Area="DataArea" AreaIndex="2" FieldName="EJECUCION" 
                                                Caption="EJECUCION" ID="PivotGridField5"  
                                                HeaderStyle-BackgroundImage-HorizontalPosition="center" 
                                                Options-AllowSort="False" >

                                        </dx:PivotGridField>                                      
                                    </Fields>

                                    </dx:ASPxPivotGrid>                               
                                </td>
                                </tr></table>
                            </td></tr>

                            <tr>
                            <td>

                            </td>
                            </tr>
                            <tr>
                            <td>
                            <table>
                            <tr>
                            <td align="center">                                    
                                <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="POR GRUPO GENERICO" Font-Size="Large" Font-Names="Times New Roman" Font-Bold="False">
                                </dx:ASPxLabel></td>
                            <td align="center">                                    
                                <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="POR RUBRO" Font-Size="Large" Font-Names="Times New Roman" Font-Bold="False">
                                </dx:ASPxLabel></td>

                            </tr>
                            <tr valign="top">
                            <td>

                                <dxwgv:ASPxGridView ID="ASPxGridviewGrupoGenerico"  runat="server"  Font-Size="X-Small"
                                        KeyFieldName="GENERICA" AutoPostBack="true" OnLoad="LoadAspxGridGrupoGenerico"   
                                    ClientInstanceName="ASPxGridviewGrupoGenerico" 
                                        AutoGenerateColumns="False">
                                    <Settings GridLines="Vertical" ShowFooter="True"  />
                                    <SettingsPager Mode="ShowAllRecords"></SettingsPager>
                                     <Columns>
                                        <dxwgv:GridViewDataTextColumn FieldName="GENERICA" Caption="DESCRICION" VisibleIndex="1" HeaderStyle-HorizontalAlign="Center">
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCION" Caption="EJECUCION" VisibleIndex="2" HeaderStyle-HorizontalAlign="Center">
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCIONPROMEDIOMENSUAL" Caption="PROMEDIO MENSUAL"
                                            VisibleIndex="3" HeaderStyle-HorizontalAlign="Center">
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <HeaderStyle HorizontalAlign="Center" Wrap="True"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                    </Columns> 
                                    <TotalSummary>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCION" SummaryType="Sum"   DisplayFormat="c"/>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCIONPROMEDIOMENSUAL" SummaryType="Sum"   DisplayFormat="c"/>
                                    </TotalSummary>
                                </dxwgv:ASPxGridView>

                            </td>
                            <td>
                                <dxwgv:ASPxGridView ID="ASPxGridviewFuenteFinanc"  runat="server"  Font-Size="X-Small"
                                        KeyFieldName="FUENTE_FINANC" AutoPostBack="true" OnLoad="LoadAspxGridFuenteFinanc"  
                                    ClientInstanceName="ASPxGridviewFuenteFinanc" 
                                        AutoGenerateColumns="False">
                                    <Settings GridLines="Vertical"  ShowFooter="True"/>
                                    <SettingsPager Mode="ShowAllRecords"></SettingsPager>
                                     <Columns>
                                        <dxwgv:GridViewDataTextColumn FieldName="FUENTE_FINANC" Caption="DESCRIPCION" VisibleIndex="1" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCION" Caption="EJECUCION" VisibleIndex="2" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCIONPROMEDIOMENSUAL" Caption="PROMEDIO MENSUAL"
                                            VisibleIndex="3" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" Wrap="True"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                    </Columns> 
                                    <TotalSummary>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCION" SummaryType="Sum"  DisplayFormat="c"/>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCIONPROMEDIOMENSUAL" SummaryType="Sum"  DisplayFormat="c"/>
                                    </TotalSummary>
                                 </dxwgv:ASPxGridView>
                            </td>

                            </tr>
                            </table>
                            </td>
                            </tr>
                            <tr><td>
                            <table>
                            <tr>
                            <td align="center">                                    
                                <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="POR CONCEPTO" Font-Size="Large" Font-Names="Times New Roman" Font-Bold="False">
                                </dx:ASPxLabel></td>
                            <td align="center">
                                <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="POR FUNCI?N" Font-Size="Large" Font-Names="Times New Roman" Font-Bold="False">
                                </dx:ASPxLabel>
                            </td></tr>
                            <tr valign="top">
                            <td>
                                <dxwgv:ASPxGridView ID="ASPxGridviewEspGasto"  runat="server" Font-Size="X-Small"
                                        KeyFieldName="ESPECIFICA_DET_NOMBRE" AutoPostBack="true" OnLoad="LoadAspxGridEspGasto"  
                                    ClientInstanceName="ASPxGridviewEspGasto" 
                                        AutoGenerateColumns="False">
                                    <Settings GridLines="Vertical"  ShowFooter="True" />
                                    <SettingsPager Mode="ShowAllRecords"></SettingsPager>
                                     <Columns>
                                        <dxwgv:GridViewDataTextColumn FieldName="ESPECIFICA_DET_NOMBRE" Caption="DESCRIPCION" VisibleIndex="1" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCION" Caption="EJECUCION" VisibleIndex="2" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCIONPROMEDIOMENSUAL" Caption="PROMEDIO MENSUAL"
                                            VisibleIndex="3" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" Wrap="True"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                    </Columns> 
                                    <TotalSummary>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCION" SummaryType="Sum"   DisplayFormat="c"/>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCIONPROMEDIOMENSUAL" SummaryType="Sum"   DisplayFormat="c" />
                                    </TotalSummary>

                                </dxwgv:ASPxGridView>

                            </td>
                            <td>
                                 <dxwgv:ASPxGridView ID="ASPxGridviewFuncion"  runat="server" Font-Size="X-Small"
                                        KeyFieldName="FUNCION" AutoPostBack="true" OnLoad="LoadAspxGridFuncion"  
                                    ClientInstanceName="ASPxGridviewFuncion" 
                                        AutoGenerateColumns="False">
                                    <Settings GridLines="Vertical"  ShowFooter="True" />
                                    <SettingsPager Mode="ShowAllRecords"></SettingsPager>
                                     <Columns>
                                        <dxwgv:GridViewDataTextColumn FieldName="FUNCION_NOMBRE" Caption="DESCRIPCION" VisibleIndex="1" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="EJECUCION" Caption="EJECUCION" VisibleIndex="2" HeaderStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            <PropertiesTextEdit DisplayFormatString="c" ></PropertiesTextEdit>
                                            <Settings AllowDragDrop="False" AllowSort="False"></Settings>
                                            <Settings AllowHeaderFilter="False" AllowAutoFilter="False" />
                                        </dxwgv:GridViewDataTextColumn>
                                    </Columns> 
                                    <TotalSummary>
                                    <dxwgv:ASPxSummaryItem FieldName="EJECUCION" SummaryType="Sum"  DisplayFormat="c" />
                                    </TotalSummary>

                                </dxwgv:ASPxGridView>                           
                            </td>
                            </tr></table>
                            </td>
                            </tr>
                            </table>
						</dxw:ContentControl>                        	
					</ContentCollection>
				</dxtc:TabPage>   
            </TabPages>
	    </dxtc:ASPxPageControl> 						
    </ContentTemplate>


</td>
</tr>
</table>


</asp:Content>
