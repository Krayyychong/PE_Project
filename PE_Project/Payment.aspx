<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PE_Project.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Payment" runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/datepicker.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
    .validator {
        display: inline-block;
        margin-left: 10px;
        color: red;
    }
</style>

<div class="h-full bg-cover bg-[url('./Image/background_payment.png')]  place-content-center">

    <div class="mt-100">
    <div class="border shadow bg-white mx-96 rounded-lg px-20 py-6">
    <div class="mx-auto max-w-2xl text-center">
        <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Payment Information</h2>
        <p class="mt-2 text-lg leading-8 text-gray-600">Please enter the relevant information for payment.</p>
    </div>
    <br /><br />

    <form action="#" method="POST" class="mx-auto mt-16 max-w-xl sm:mt-20" style="clip: rect(auto, 300px, auto, 300px)">
        <div class="grid grid-cols-1 gap-x-8 gap-y-6 sm:grid-cols-2">

        <div>
            <asp:Label ID="label1" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Card Holder Name</asp:Label>
            <div class="mt-2.5"> 
                <asp:TextBox ID="CardHolderName" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" ></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvCardHolderName" runat="server" ControlToValidate="CardHolderName" ErrorMessage="Cardholder name is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

         <div>
            <asp:Label ID="label5" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Phone</asp:Label>
            <div class="relative mt-2.5">
                <div class="absolute inset-y-0 left-0 flex items-center">
                    <asp:Label ID="label7" runat="server" CssClass="sr-only">Country</asp:Label>
                    <asp:DropDownList ID="phoneHeader" runat="server" Width="90px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="h-full rounded-md border-0 bg-transparent bg-none py-0 pl-1 pr-5 text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <asp:ListItem>+60</asp:ListItem>
                        <asp:ListItem>+86</asp:ListItem>
                        <asp:ListItem>+866</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:TextBox ID="Phone" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 pl-24 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="Phone" ErrorMessage="Phone number is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Label ID="label2" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Email</asp:Label>
            <div class="mt-2.5"> 
                <asp:TextBox ID="Email" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" ></asp:TextBox>
            </div>
        </div>

         <div>
            <asp:Label ID="label6" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Country</asp:Label>
            <div class="relative mt-2.5">
                <div class="absolute inset-y-0 left-0 flex items-center">
                    <asp:Label ID="label14" runat="server" CssClass="sr-only">Country</asp:Label>
                    <asp:DropDownList ID="country" runat="server" Width="308px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="h-full rounded-md border-0 bg-transparent bg-none py-0 pl-1 pr-5 text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>The US</asp:ListItem>
                        <asp:ListItem>The UK</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:TextBox ID="container" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 pl-24 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="country" ErrorMessage="Country is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

         <div class="col-span-full">
            <asp:Label ID="label3" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Card Number</asp:Label>
            <div class="relative mt-2.5">
                <div class="absolute inset-y-0 left-0 flex items-center">
                    <asp:Label ID="label4" runat="server" CssClass="sr-only">Bank</asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="90px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="h-full rounded-md border-0 bg-transparent bg-none py-0 pl-1 pr-5 text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <asp:ListItem>CIMB</asp:ListItem>
                        <asp:ListItem>CitiBank</asp:ListItem>
                        <asp:ListItem>Maybank</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:TextBox ID="CardNo" runat="server" Width="708px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 pl-24 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="CardNo" ValidationExpression="^\d{16}$" ErrorMessage="Card number must be 16 digits." ForeColor="Red"></asp:RegularExpressionValidator>
        </div>

         <div>
            <asp:Label ID="label8" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Expiry Date</asp:Label>
             <div class="relative mt-2 rounded-md shadow-sm">
                 <input datepicker id="expireDate" type="text" runat="server" Width="308px"
                     class="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"/>
             </div>
        </div>

        <div>
            <asp:Label ID="Label9" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">CVV</asp:Label>
            <div class="mt-2.5">
                <asp:TextBox ID="CVV"  runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
            </div>
            <asp:RegularExpressionValidator ID="revCVV" runat="server" ControlToValidate="CVV" ValidationExpression="^\d{3}$" ErrorMessage="CVV must be 3 digits." CssClass="validator"></asp:RegularExpressionValidator>
        </div>

        <div class="columns-3 col-span-full">
        <div class="sm:col-span-2 sm:col-start-1">
           <asp:Label ID="Label12" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">State/Province</asp:Label>
          <div class="mt-2">
            <asp:TextBox ID="Region" runat="server" Width="150px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
          </div>
            <asp:RequiredFieldValidator ID="rfvRegion" runat="server" ControlToValidate="Region" ErrorMessage="Region is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

        <div class="sm:col-span-2">
           <asp:Label ID="Label11" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">City</asp:Label>
          <div class="mt-2">
            <asp:TextBox ID="City" runat="server" Width="150px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
          </div>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="City" ErrorMessage="City is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

        <div class="sm:col-span-2">
           <asp:Label ID="Label13" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Postal Code</asp:Label>
          <div class="mt-2">
            <asp:TextBox ID="PostalCode" runat="server" Width="150px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
          </div>
            <asp:RequiredFieldValidator ID="rfvPostalCode" runat="server" ControlToValidate="PostalCode" ErrorMessage="PostalCode is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>
        </div>

        <div class="col-span-full">
            <asp:Label ID="Label10" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Street</asp:Label>
            <div class="mt-2">
                <asp:TextBox ID="StreetAddress" runat="server" Width="708px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" ControlToValidate="StreetAddress" ErrorMessage="Street is required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
        </div>

        </div>

        <div class="mt-10">
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="block w-full rounded-md bg-[#58220D] px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-sm hover:bg-[#CCAC88] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"></asp:Button>
        </div>

    </form>
    </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>


