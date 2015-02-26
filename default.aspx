<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Mortgage Calculator</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
    
         Mike's Mortgage Calculator
        <br /><br />
         </header>
     <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Loan Amount: <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" Font-Size="XX-Large"></asp:Label>
        
        <br /><br />
        <div class="table">
        <asp:GridView ID="loanGridView" runat="server" BackColor="#66FFFF" ShowHeaderWhenEmpty="True" BorderColor="White">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BorderColor="#CCCCCC" />
            <HeaderStyle BackColor="#333333" ForeColor="White" />
      
            <RowStyle height="40px" />
        </asp:GridView>
            </div>
            
        </div>
    </form>
</body>
</html>
