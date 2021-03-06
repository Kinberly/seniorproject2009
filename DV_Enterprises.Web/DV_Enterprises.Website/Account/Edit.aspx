﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Account_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset>
        <div class = "grid_16"> 
            <h2 class = "title">Account Information</h2>
            <h4 class="title">
            <br />Personal Information<br />       
            <ul>
            <li>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name" Width="100px" />
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RegularExpressionValidator ID="revFirstName" runat="server" 
                ErrorMessage="ERROR: Field must be a valid name." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ControlToValidate="txtFirstName" />
                <br />
            </li>
        
            <li>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name" Width="100px" />
                <asp:TextBox ID="txtLastName" runat="server" />
                <asp:RegularExpressionValidator ID="revLastName" runat="server" 
                ErrorMessage="ERROR: Field must be a valid name." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ControlToValidate="txtLastName" />
                <br />
            </li>
            <li>
                <asp:Label ID="lblEmail" runat="server" Text="Email" Width="100px" />
                <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                <asp:RegularExpressionValidator id="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"
                    ErrorMessage="ERROR: Field must be a valid e-mail address." />
                <br />
            </li>
            <li>
                <asp:Label ID="lblPhone" runat="server" Text="Phone" Width="100px" />
                <asp:TextBox ID="txtPhone" runat="server" MaxLength="15" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="ERROR: Field must be a valid U.S. phone number." ControlToValidate="txtPhone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" />
                <br />
            </li>
        </ul>
         </h4>
         </div>
    </fieldset>
    <fieldset>
    <div class = "grid_16"> 
        <h2 class = "title">Address Information</h2>
        <h4 class="title"> 
        <ul>
            <li>
                <asp:Label ID="lblAddress" runat="server" Text="Address" Width="100px" />
                <asp:TextBox ID="txtAddress" MaxLength="40" runat="server" />
                <asp:RegularExpressionValidator ID="revAddress" runat="server" 
                ErrorMessage="ERROR: Field must be a valid string." ValidationExpression="^[0-9a-zA-Z''-'\s]{1,40}$" ControlToValidate="txtAddress" />
                <br />
            </li>
            <li>
                <asp:Label ID="lblCity" runat="server" Text="City" Width="100px" />
                <asp:TextBox ID="txtCity" runat="server" />
                <asp:RegularExpressionValidator ID="revCity" runat="server" 
                ErrorMessage="ERROR: Field must be a valid string." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ControlToValidate="txtCity" />
                <br />
            </li>
            <li>
                <asp:Label ID="lblState" runat="server" Text="State" Width="100px" />
                <asp:TextBox ID="txtState" runat="server" MaxLength="2" />
                <asp:RegularExpressionValidator ID="revState" runat="server" ErrorMessage="ERROR: Field must be a valid state. (FL, GA, etc..)" ValidationExpression="^[A-Z]{2}$" ControlToValidate="txtState" />
                <br />
            </li>
            <li>
                <asp:Label ID="lblZipCode" runat="server" Text="Zip Code" Width="100px" />
                <asp:TextBox ID="txtZipCode" runat="server" MaxLength="5" />
                <asp:RegularExpressionValidator ID="revZipCode" runat="server" ErrorMessage="ERROR: Field must be a 5 digit, numeric value" ControlToValidate="txtZipCode" ValidationExpression="^\d{5}$" />
                <br />
            </li>
        </ul>
        </h4>
        </div>
    </fieldset>
      <div class = "grid_16">
    <fieldset class="buttons">
                <asp:Button ID="butUpdateProfile" runat="server" Text="Save Profile" onclick="butUpdateProfile_Click" />
    </fieldset>
    
    <h4 class="title">    
    <asp:ChangePassword ID="ChangePassword1" runat="server" Width="100px">
        <LabelStyle Width="100px" />
        <ChangePasswordTemplate>
            <table border="0" cellpadding="1" cellspacing="0" 
                style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width:100px;">
                            <tr>
                                <td align="center" colspan="2">
                                    Change Your Password<br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width:100px;">
                                    <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                        AssociatedControlID="CurrentPassword">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                        ControlToValidate="CurrentPassword" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width:100px;">
                                    <asp:Label ID="NewPasswordLabel" runat="server" 
                                        AssociatedControlID="NewPassword" Width="200px">New Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                        ControlToValidate="NewPassword" ErrorMessage="New Password is required." 
                                        ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width:100px;">
                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                        AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                        ControlToValidate="ConfirmNewPassword" 
                                        ErrorMessage="Confirm New Password is required." 
                                        ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                        ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                        Display="Dynamic" 
                                        ErrorMessage="The Confirm New Password must match the New Password entry." 
                                        ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" 
                                        CommandName="ChangePassword" Text="Change Password" 
                                        ValidationGroup="ChangePassword1" />
                                </td>
                                <td>
                                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
    </h4>
  </div>
</asp:Content>

