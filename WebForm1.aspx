<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<%--<%@ Register Src="~/Guru99Control.ascx" TagName="WebControl" TagPrefix="TWebControl"%>--%>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="TWebControl" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="form1" runat="server">
        
        <div>
            <asp:Label ID="lblName" runat="server" Text="Demo"></asp:Label>
        </div>

        Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButton ID="rdFemale" runat="server" Text="Female" />
        <asp:RadioButton ID="rdMale" runat="server" Text="Male" />
        <br />
        <br />
        <asp:CheckBox ID="chkC" runat="server" Text="C#" />
        <br />
        <br />
        <asp:CheckBox ID="chkASP" runat="server" Text="ASP.Net" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        <TWebControl:WebUserControl1 runat="server" id="WebUserControl1" />

        <asp:Image ID="Image1" runat="server" Height="106px" ImageUrl="~/Img/index.jpg" Width="206px" />

    </form>

   <%--<form id="form1" runat="server">

    <div>
        <asp:DataGrid ID="one" runat="server"></asp:DataGrid>
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
    </form>--%>



</body>
</html>
