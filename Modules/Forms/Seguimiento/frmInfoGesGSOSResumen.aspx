	<%@ Page Language="C#" EnableEventValidation = "false" AutoEventWireup="true" CodeBehind="frmInfoGesGSOSResumen.aspx.cs" Inherits="InfogesEmape.Modules.Forms.Seguimiento.frmInfoGesGSOSResumen" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- <img src = "http://www.aspsnippets.com/images/Blue/Logo.png" /><br /> -->
     <img src="/Images/emape.png" style="height: 100px; width: 300px" /> <br />
     </div>
           <table border = "1" width = "800" style="font-size:10px;">
                                <tr>
                                    <td>                     
                                        <asp:Button ID="Button2" runat="server" Text="Export to Excel" CssClass="btn btn-success btn-xs" OnClick="Button2_Click" />
                                        <asp:Button ID="Button1" runat="server" Text="Export to PDF" CssClass="btn btn-primary btn-xs" OnClick="Button1_Click" />
                                    </td>
             </tr>
                                <caption>
                                    <br />
                                    <br />
                                    <tr>
                                       <td>                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="table table-bordered">
                                                <tr>
                                                    <td>Supervisor</td>
                                                    <td>
                                                        <asp:Label ID="LBLSUPERVISOR" runat="server"></asp:Label>
                                                    </td>
                                                    <td>Fecha Inicio</td>
                                                    <td>
                                                        <asp:Label ID="LBLFECHAINICIO" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Contratista</td>
                                                    <td>
                                                        <asp:Label ID="LBLCONTRATISTA" runat="server"></asp:Label>
                                                    </td>
                                                    <td>Fecha Fin</td>
                                                    <td>
                                                        <asp:Label ID="LBLFECHAFIN" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Porcentaje Ganador</td>
                                                    <td>
                                                        <asp:Label ID="LBLPORCENTAJEGANADOR" runat="server"></asp:Label>
                                                    </td>
                                                    <td>1</td>
                                                    <td>1</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                            <br />
                                            <br />
                                            <table class="table table-bordered" width="100%">
                                                <tr>
                                                    <th rowspan="2">DESCRIPCION</th>
                                                    <th rowspan="2">MONTO CONTRATADO</th>
                                                    <th colspan="3" style="text-align:center">VALORIZACION</th>
                                                    <th rowspan="2">% AVANCE ACUMULADO</th>
                                                    <th rowspan="2">SALDO POR VALORIZAR</th>
                                                </tr>
                                                <tr>
                                                    <td>ANTERIOR</td>
                                                    <td>ACTUAL</td>
                                                    <td>ACUMULADO</td>
                                                </tr>
                                                <tr>
                                                    <th>VALORIZACION (V) </th>
                                                    <td>
                                                        <asp:Label ID="LBLMONTOCONTRADO" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACION_ANTERIOR" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACION_ACTUAL" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACION_ACUMULADA" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="AVANCEACUMULADO" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="SALDOPORVALORIZAR" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>TOTAL CONTRACTUAL </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONANTERIORPORCENTAJE" runat="server" Text="%"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONACTUALPORCENTAJE" runat="server" Text="%"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONACUMULADAPORCENTAJE" runat="server" Text="%"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>REAJUSTES (R) </th>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>DEDUCCIONES </th>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>VALORIZACION BRUTA </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONANTERIORBRUTA" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONACTUALBRUTA" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONACUMULADABRUTA" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>ADELTANTO DIRECTO </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTODIRECTOANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTODIRECTOACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTODIRECTOACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>ADELANTO MATERIALES </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTOMATERIALESANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTOMATERIALESACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLADELANTOMATERIALESACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>AMORTIZACION TOTAL </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALAMORTIZACIONANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALAMORTIZACIONACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALAMORTIZACIONACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>VALORIZACION NETA </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONNETAANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONNETAACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLVALORIZACIONNETAACUMULADA" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>MONTO A PAGAR AL CONTRATISTA </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLMONTOSUBTOTALANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLMONTOSUBTOTALACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLMONTOSUBTOTALACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>IGV </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLIGVANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLIGVACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLIGVACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>TOTAL CON IGV </th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALANTERIOR" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALACTUAL" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALACUMULADO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>TOTAL COMPROMISO DE PAGO </th>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="LBLTOTALCOMPROMISOPAGO" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </caption>
                                </table>

    </form>
</body>
</html>
