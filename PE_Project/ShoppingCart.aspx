<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="PE_Project.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ShoppingCart" runat="server">

    <!--
    Background backdrop, show/hide based on slide-over state.

    Entering: "ease-in-out duration-500"
      From: "opacity-0"
      To: "opacity-100"
    Leaving: "ease-in-out duration-500"
      From: "opacity-100"
      To: "opacity-0"
  -->


    <div class="fixed inset-0 overflow-hidden">
        <div class="absolute inset-0 overflow-hidden">
            <div class="pointer-events-none fixed inset-y-0 right-0 flex max-w-full pl-10">
                <!--
          Slide-over panel, show/hide based on slide-over state.

          Entering: "transform transition ease-in-out duration-500 sm:duration-700"
            From: "translate-x-full"
            To: "translate-x-0"
          Leaving: "transform transition ease-in-out duration-500 sm:duration-700"
            From: "translate-x-0"
            To: "translate-x-full"
        -->
                <div class="pointer-events-auto w-screen max-w-md">
                    <div class="flex h-full flex-col overflow-y-scroll bg-white shadow-xl">
                        <div class="flex-1 overflow-y-auto px-4 py-6 sm:px-6">
                            <div class="flex items-start justify-between">
                                <h2 class="text-lg font-medium text-gray-900" id="slide-over-title">Shopping cart</h2>
                                <div class="ml-3 flex h-7 items-center">
                                    <asp:ImageButton ID="close" runat="server" ImageUrl="~/Image/close.png" OnClick="Close_Click" CssClass="relative -m-2 p-2 text-gray-400 hover:text-gray-500" Width="40" Height="40" ImageAlign="Right" />
                                </div>
                            </div>

                            <div class="mt-8">
                                <div class="flow-root">
                                    <ul role="list" class="-my-6 divide-y divide-gray-200">
                                        <asp:Repeater ID="CartRepeater" runat="server" OnItemCommand="CartRepeater_ItemCommand">
                                            <ItemTemplate>
                                                <li class="flex py-6">
                                                    <div class="h-24 w-24 flex-shrink-0 overflow-hidden rounded-md border border-gray-200">
                                                        <img src="<%# Eval("book_image") %>"" alt="" class="h-full w-full object-cover object-center" >
                                                    </div>
                                                    <div class="ml-4 flex flex-1 flex-col">
                                                        <div>
                                                            <div class="flex justify-between text-base font-medium text-gray-900">
                                                                <h3>
                                                                    <a href="#"><%# Eval("book_name") %></a>
                                                                </h3>
                                                                <p class="ml-4">$<%# Eval("subtotal") %></p>
                                                            </div>
                                                        </div>
                                                        <div class="flex flex-1 items-end justify-between text-sm">
                                                            <p class="text-gray-500">Qty <%# Eval("total_quantity") %></p>
                                                            <div class="flex">
                                                                <asp:Button ID="RemoveButton" runat="server" CommandName="Remove" CommandArgument='<%# Eval("book_id") %>' Text="Remove" CssClass="font-medium text-[#58220D] hover:text-[#CCAC88]"></asp:Button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>


                        </div>

                        <div class="border-t border-gray-200 px-4 py-6 sm:px-6">
                            <div class="flex justify-between text-base font-medium text-gray-900">
                                <p>Subtotal</p>
                                <asp:Label ID="Label1" runat="server" Text="$0.00"></asp:Label>
                            </div>
                            <p class="mt-0.5 text-sm text-gray-500">Shipping and taxes calculated at checkout.</p>
                            <div class="mt-6">
                                <asp:Button ID="checkout" runat="server" Text="Checkout" OnClick="Checkout_Click" CssClass="block w-full rounded-md bg-[#58220D] px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-sm hover:bg-[#CCAC88] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"></asp:Button>
                            </div>
                            <div class="mt-6 flex justify-center text-center text-sm text-gray-500">
                                <p>
                                    or
                    <asp:Button ID="continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" CssClass="font-medium text-[#58220D] hover:text-[#CCAC88]"></asp:Button>
                                    <span aria-hidden="true">&rarr;</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
