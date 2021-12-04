<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Demo.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">       
        <div>
            <%--<asp:DataGrid ID="one" runat="server"></asp:DataGrid>--%>

            <asp:Repeater ID="RepeatInformation" runat="server">
            <HeaderTemplate>
                <table style="border:1px solid #A55129">
                    <tr>
                        <b>
                            <td>
                                Roll No
                            </td>
                            <td>
                                Student Name
                            </td>
                          
                        </b>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="background-color:greenyellow" >
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.id")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.fullname")%>
                    </td>
                   
                </tr>
            </ItemTemplate>
            <SeparatorTemplate>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                        <br>
                    </td>
                    <td>
                        <hr />line Between all Rows Which is why  we need reapeted Control
                    </td>
                </tr>
            </SeparatorTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color:yellow">
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.id")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.fullname")%>
                    </td>
                  
                </tr>
            </AlternatingItemTemplate>
            <SeparatorTemplate>
                <tr>
                    <td>
                        <hr />
                    </td>
                    <td>
                        <hr />
                    </td>
                  
                </tr>
            </SeparatorTemplate>
            <FooterTemplate>
                <tr>
                    <td>
                        School Records displayed
                    </td>
                </tr>
                </table>
            </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
