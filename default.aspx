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
                  
        &nbsp;<br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <tr>
        <td align="right">&nbsp;</td><td align="left"></td><asp:Button ID="btnCalcPmt" runat="server" TabIndex="4" Text="Calculate" />
         </td>
        </tr>
        
        <br /><br />
                
        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
      
      
        </asp:GridView>
            
        </div>
    </form>
</body>
</html>
