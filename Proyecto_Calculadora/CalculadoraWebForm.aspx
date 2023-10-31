<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraWebForm.aspx.cs" Inherits="Proyecto_Calculadora.CalculadoraWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 451px;
            height: 428px;
        }
        .auto-style3 {
            height: 46px;
            color: #FFFFFF;
            font-size: x-large;
            text-align: center;
            background-color: #000066;
        }
        .auto-style5 {
            height: 95px;
            text-align: center;
        }
        .auto-style17 {
            width: 89px;
            height: 56px;
        }
        .auto-style18 {
            height: 55px;
            width: 90px;
        }
        .auto-style23 {
            height: 55px;
            width: 89px;
        }
        .auto-style24 {
            height: 56px;
            width: 90px;
        }
        .auto-style25 {
            height: 56px;
            width: 90px;
            text-align: center;
        }
        .auto-style26 {
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style27 {
            font-weight: bold;
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #000066;
        }
        .auto-style28 {
            background-color: #99CCFF;
        }
    </style>
</head>
<body style="height: 460px; width: 470px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="5"><strong>PROYECTO CALCULADORA</strong></td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="5">
                    <asp:TextBox ID="Tresultado" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="64px" ReadOnly="True" TextMode="MultiLine" Width="427px" MaxLength="20" TextAlign = "Right" CssClass="auto-style28">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Braiz" runat="server" CssClass="auto-style26" Height="51px" Text="√" Width="85px" OnClick="BoperadorClick"/>
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Bclear" runat="server" CssClass="auto-style26" Height="51px" Text="c" Width="85px" OnClick="Bclear_Click" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Bborrar" runat="server" CssClass="auto-style26" Height="51px" Text="&#213;" Width="85px" Font-Names="Wingdings" OnClick="Bborrar_Click" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Bfactorial" runat="server" CssClass="auto-style26" Height="51px" Text="n!" Width="85px" Font-Italic="True" OnClick="BoperadorClick" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Bdividir" runat="server" CssClass="auto-style26" Height="51px" Text="÷" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Bpotenciax" runat="server" CssClass="auto-style26" Height="51px" Text="x^y" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style26" Height="51px" Text="7" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style26" Height="51px" Text="8" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style26" Height="51px" Text="9" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Bmultiplicar" runat="server" CssClass="auto-style26" Height="51px" Text="x" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Bpotencia10" runat="server" CssClass="auto-style26" Height="51px" Text= "10^x" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Height="51px" Text="4" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style26" Height="51px" Text="5" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style26" Height="51px" Text="6" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Brestar" runat="server" CssClass="auto-style26" Height="51px" Text="-" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Blog" runat="server" CssClass="auto-style26" Height="51px" Text="log" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="51px" Text="1" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="51px" Text="2" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style26" Height="51px" Text="3" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Bsumar" runat="server" CssClass="auto-style26" Height="51px" Text="+" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Bpotencia2" runat="server" CssClass="auto-style26" Height="51px" Text="x²" Width="85px" OnClick="BoperadorClick" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Bcambiosigno" runat="server" CssClass="auto-style26" Height="51px"  Text="±" Width="85px" OnClick="Bcambiosigno_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button0" runat="server" CssClass="auto-style26" Height="51px" Text="0" Width="85px" OnClick="agregarNumero" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Bcomadec" runat="server" CssClass="auto-style26" Height="51px"  Text="," Width="85px" OnClick="Bcomadec_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Bcalcular" runat="server" CssClass="auto-style27" Height="51px" Text="=" Width="85px" OnClick="Bcalcular_Click" />
                    </strong></td>
            </tr>
        </table>
    </form>
</body>
</html>
