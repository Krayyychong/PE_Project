<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentSuccess.aspx.cs" Inherits="PE_Project.PaymentSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PaymentSuccess" runat="server">

    <div class="h-full bg-[url('./Image/background_payment.png')]  place-content-center">
        <div class="inset-x-0 top-[-10rem] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[-20rem]"></div>

        <div class="border shadow bg-white mx-96 my-8 rounded-lg px-16 py-30">
        <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Payment Successful</h2>
            <p class="mt-2 text-lg leading-8 text-gray-600">Click the following link to back to home page.</p>
        </div>
        <br /><br />

  
        <div class="mt-10 flex items-center justify-center gap-x-6">
            <asp:Button ID="back" runat="server" Text="Back" OnClick="Back_Click" CssClass="rounded-md bg-[#58220D] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-[#9B6740] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600"></asp:Button>
        </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
