<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="CvEntityProje.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px;">
        <tr>
            <th>
                ID
            </th>
            <th>
                Ad Soyad
            </th>
            <th>
                Mail
            </th>
            <th>Konu</th
            <th>Mesajı Gör</th>
        </tr>
        <tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("ID") %>
                        </td>
                        <td>
                            <%#Eval("ADSOYAD") %>
                           
                        </td>
                        <td>
                            <%#Eval("MAIL") %>
                           
                        </td>
                        <td>
                            <%#Eval("KONU") %>
                           
                        </td>
                        
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"MesajDetay.Aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Mesajı gör</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>
</asp:Content>

