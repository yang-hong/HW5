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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span class=color>*</span>Loan Amount: <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <span class="errorMessage">
        &nbsp;<asp:RequiredFieldValidator ID="Field_Amount" runat="server" 
            ErrorMessage="Please Enter Your Amount. Eg:&quot;1000&quot;"
            controltovalidate="tbLoanAmt"></asp:RequiredFieldValidator>
            </span>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (eg, 1000)<br />      
        
        <span class=color>*</span>Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        <span class="errorMessage">
        <asp:RequiredFieldValidator ID="Field_Interest" runat="server"
             ErrorMessage="Please Enter Your Interest. Eg: enter &quot;20&quot; Means 20%"
            controltovalidate="tbAnnualInterest">
        </asp:RequiredFieldValidator>
        </span>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (eg, 20)<br />

     
        &nbsp;<span class=color>*</span>Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        <span class="errorMessage">
         <asp:RequiredFieldValidator ID="Field_Years" runat="server"
             controltovalidate="tbLoanTerm"
              ErrorMessage="Please Enter Your Loan Term in Years. Eg:&quot;2&quot;"></asp:RequiredFieldValidator>
            </span>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (eg, 2)<br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <tr>
        <td align="right">&nbsp;</td><td align="left"></td><asp:Button ID="btnCalcPmt" runat="server" TabIndex="4" Text="Calculator" />
         </td>
        </tr>
        

        
        <br />
        <br />

        <% If Not IsPostBack Then%>
        Welcome to my mortgage calculater. Please complete fields above to have your monthly payment and loan repayment schedule calculated for you. 
        <%Else%>
        PaymentAmount:
        <%End If%>

        &nbsp;<span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
      
      
        </asp:GridView>
            
        </div>
    </form>
</body>
</html>
