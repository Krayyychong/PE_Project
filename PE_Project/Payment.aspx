<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PE_Project.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Payment" runat="server">

    <div class="isolate bg-white px-6 py-24 sm:py-32 lg:px-8">
        <div class="absolute inset-x-0 top-[-10rem] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[-20rem]" aria-hidden="true">
            <div class="relative left-1/2 -z-10 aspect-[1155/678] w-[36.125rem] max-w-none -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-40rem)] sm:w-[72.1875rem]" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
        </div>

        <div class="border shadow bg-white mx-96 my-4 rounded-lg px-16 py-6">
        <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Payment Information</h2>
            <p class="mt-2 text-lg leading-8 text-gray-600">Please enter the relevant information for payment.</p>
        </div>
        <br /><br />

        <form action="#" method="POST" class="mx-auto mt-16 max-w-xl sm:mt-20" style="clip: rect(auto, 300px, auto, 300px)">
            <div class="grid grid-cols-1 gap-x-8 gap-y-6 sm:grid-cols-2">

            <div>
                <asp:Label ID="label1" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">First Name</asp:Label>
                <div class="mt-2.5"> 
                    <asp:TextBox ID="FirstName" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" ></asp:TextBox>
                </div>
            </div>

            <div>
                <asp:Label ID="label2" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">First Name</asp:Label>
                <div class="mt-2.5"> 
                    <asp:TextBox ID="LastName" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" ></asp:TextBox>
                </div>
            </div>

             <div>
                <asp:Label ID="label5" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Phone</asp:Label>
                <div class="relative mt-2.5">
                    <div class="absolute inset-y-0 left-0 flex items-center">
                        <asp:Label ID="label7" runat="server" CssClass="sr-only">Country</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="90px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="h-full rounded-md border-0 bg-transparent bg-none py-0 pl-1 pr-5 text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                            <asp:ListItem>+60</asp:ListItem>
                            <asp:ListItem>+86</asp:ListItem>
                            <asp:ListItem>+866</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:TextBox ID="TextBox1" runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 pl-24 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
                </div>
            </div>
  
            <div>
                <asp:Label ID="label6" runat="server" CssClass="block text-sm font-semibold leading-6 text-gray-900">Email</asp:Label>
                <div class="mt-2.5">
                    <asp:TextBox ID="TextBox2"  runat="server" Width="308px" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
                </div>
            </div>
      
            <br />
            <div class="sm:col-span-2">
                <asp:Label ID="label8" runat="server" class="block text-sm font-semibold leading-6 text-gray-900">Message</asp:Label>
                    <div class="mt-2.5">
                        <asp:TextBox ID="message" runat="server" TextMode="MultiLine" rows="4" CssClass="block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></asp:TextBox>
                    </div>
            </div>

         
            <div class="flex gap-x-4 sm:col-span-2">
                <div class="flex h-6 items-center">
                <!-- Enabled: "bg-indigo-600", Not Enabled: "bg-gray-200" -->
                    <button type="button" class="flex w-8 flex-none cursor-pointer rounded-full bg-gray-200 p-px ring-1 ring-inset ring-gray-900/5 transition-colors duration-200 ease-in-out focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600" role="switch" aria-checked="false" aria-labelledby="switch-1-label">
                        <span class="sr-only">Agree to policies</span>
                        <!-- Enabled: "translate-x-3.5", Not Enabled: "translate-x-0" -->
                        <span aria-hidden="true" class="h-4 w-4 translate-x-0 transform rounded-full bg-white shadow-sm ring-1 ring-gray-900/5 transition duration-200 ease-in-out"></span>
                    </button>
                </div>
                <label class="text-sm leading-6 text-gray-600" id="switch-1-label">
                    By selecting this, you agree to our
                    <a href="#" class="font-semibold text-[#58220D]">privacy&nbsp;policy</a>.
                </label>
            </div>

            </div>

            <div class="mt-10">
                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="block w-full rounded-md bg-[#58220D] px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-sm hover:bg-[#CCAC88] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"></asp:Button>
            </div>

        </form>
        </div>
    </div>

</asp:Content>


