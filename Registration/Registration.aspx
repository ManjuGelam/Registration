<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
    function notEmpty(){
            var Eid, Ename, Email ;
            Eid = document.getElementById("txtId").value;
            Ename = document.getElementById("txtEname").value;
            Email = document.getElementById("txtEmail").value;
     

            if (Eid == '' && Ename == '' && Email == ''  ) {
               alert("Enter All Fields");
               return false;
          }
            if (Eid == '') {
                alert("Please Enter id");
                return false;
            }
            if (Ename == '') {
                alert("Please Enter name");
                return false;
            }
           
            if (Email == '') {
                alert("Please Enter  Email");
                return false;
            }
        var Ename = document.getElementById('txtEname');
        var filter = /^[A-Za-z]+$/ ;
        if (!filter.test(Ename.value)) {
            alert('Invalid  Employee Name ');
            Ename.focus;
            return false;
        }
        var Email = document.getElementById('txtEmail');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(Email.value)) {
            alert('Please Enter Valid Email Address');
            Email.focus;
            return false;
        }
        
            
            return true;
               
        }
     </script>
</head>
<body>
    <center>
    <form id="form1" runat="server" style="border:solid;width:600px;height:300px;background-color:tan">
        <h1 align="center">Registration Page</h1>
       <table border="1" style="background-color:darkgray" >
              
            <tr>
                   <td><asp:label ID="lblId" runat="server" Text="Enter Emp Id:"></asp:label></td>
                   <td>
                       <asp:TextBox ID="txtId" runat="server" ></asp:TextBox>
                   </td>
               </tr>
            <tr>
                   <td><asp:label ID="lblEname" runat="server" Text="Enter Employee name :"></asp:label></td>
                   <td>
                       <asp:TextBox ID="txtEname" runat="server" ></asp:TextBox>
                   </td>
               </tr>
           <tr>
               <td>
                   <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                   <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
             
           </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:Button  style="background-color:forestgreen" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" OnClientClick="return notEmpty() "/>
                   
               </td>
           </tr>
           </table>
        <br />
    </form>
        </center>
</body>
</html>

