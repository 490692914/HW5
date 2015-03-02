<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shan's Loan Calculator</title>
    <link rel="stylesheet" type="text/css" href="./css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Shan's Mortgage Calculator </h1>
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="clearBtn" runat="server" Text="Clear" Width="96px" />
        
        <br /><br />

        <% If Not IsPostBack Then%>
        <p>Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</p>
        <% else %>
        <br />
                          
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView> 
        <% End If%>
    </div>      
    </form>
</body>
</html>
