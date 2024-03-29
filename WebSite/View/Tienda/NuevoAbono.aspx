﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Tienda/MasterVendedor.master" AutoEventWireup="true" CodeFile="~/Controller/Tienda/NuevoAbono.aspx.cs" Inherits="View_Tienda_NuevoAbono" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 147px;
        }
        .auto-style18 {
            width: 331px;
        }
        .auto-style19 {
            width: 331px;
            text-align: center;
            height: 30px;
        }
        .auto-style20 {
            width: 147px;
            text-align: center;
        }
        .auto-style36 {
            width: 147px;
            height: 30px;
        }
        .auto-style37 {
            height: 30px;
        }
        .auto-style39 {
            width: 331px;
            text-align: center;
        }
        .auto-style40 {
            width: 147px;
            height: 34px;
        }
        .auto-style41 {
            width: 331px;
            text-align: center;
            height: 34px;
        }
        .auto-style42 {
            height: 34px;
        }
        .auto-style43 {
            width: 147px;
            height: 26px;
        }
        .auto-style44 {
            width: 331px;
            text-align: center;
            height: 26px;
        }
        .auto-style45 {
            height: 26px;
        }
        .auto-style46 {
            font-size: medium;
        }
        .auto-style47 {
            text-align: center;
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="L_Abonos" runat="server" Text="Abonos Pendientes" CssClass="auto-style46"></asp:Label>
            </td>
            <td class="auto-style18">
                    <asp:GridView ID="GV_AbonosPendientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No hay abonos pendientes." CssClass="auto-style47" PageSize="5" Width="353px" OnRowCommand="GV_AbonosPendientes_RowCommand" OnPageIndexChanging="GV_AbonosPendientes_PageIndexChanging" OnRowDataBound="GV_AbonosPendientes_RowDataBound">
                        <Columns>
                            
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LB_Seleccionar" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" CommandArgument = '<%# Bind("idabono") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Cedula Cliente">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idcliente") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idcliente") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Precio">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("precio") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("precio") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style46">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="L_Deuda" runat="server" Text="Deuda de este abono:" CssClass="auto-style46"></asp:Label>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="TB_PrecioDeuda" runat="server" Enabled="False" CssClass="auto-style46"></asp:TextBox>
                <br class="auto-style46" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43">
                <asp:Label ID="L_Valor" runat="server" Text="Valor a Abonar" CssClass="auto-style46"></asp:Label>
            </td>
            <td class="auto-style44">
                <asp:TextBox ID="TB_PagoActual" runat="server" CssClass="auto-style46"></asp:TextBox>
            </td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style40">
            </td>
            <td class="auto-style41">
                <asp:Button ID="B_Pagar" runat="server" Text="Pagar" OnClick="B_AgregarProducto_Click" CssClass="auto-style46" />
            </td>
            <td class="auto-style42"></td>
        </tr>
        </table>
</asp:Content>
