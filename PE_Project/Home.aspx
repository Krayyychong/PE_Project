<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PE_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Home" runat="server">
<!--welcome rolling-->
<div class="relative overflow-hidden bg-[#7E604A] ">
      <div class="pb-80 pt-16 sm:pb-40 sm:pt-24 lg:pb-48 lg:pt-40">
        <div class="relative mx-auto max-w-7xl px-4 sm:static sm:px-6 lg:px-8">
            <!--text-->
          <div class="sm:max-w-lg">
            <h1 class="text-4xl font-bold tracking-tight text-white sm:text-6xl font-serif italic ">Book Haven are finally here</h1>
            <p class="mt-4 text-xl text-gray-100"> In our store, you can find every book you want </p>
          </div>
          
            <div class="mt-10">
              <!-- Decorative image grid -->
              <div aria-hidden="true" class="pointer-events-none lg:absolute lg:inset-y-0 lg:mx-auto lg:w-full lg:max-w-7xl">
                <div class="absolute transform sm:left-1/2 sm:top-0 sm:translate-x-8 lg:left-1/2 lg:top-1/2 lg:-translate-y-1/2 lg:translate-x-8">
                  <div class="flex items-center space-x-6 lg:space-x-8">
                    <div class="grid flex-shrink-0 grid-cols-1 gap-y-6 lg:gap-y-8">
                      <div class="h-64 w-44 overflow-hidden rounded-lg sm:opacity-0 lg:opacity-100">
                        <img src="Image/home_1.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_2.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                    </div>
                    <div class="grid flex-shrink-0 grid-cols-1 gap-y-6 lg:gap-y-8">
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_3.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_4.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_5.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                    </div>
                    <div class="grid flex-shrink-0 grid-cols-1 gap-y-6 lg:gap-y-8">
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_6.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                      <div class="h-64 w-44 overflow-hidden rounded-lg">
                        <img src="Image/home_7.png" alt="" class="h-full w-full object-cover object-center">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</div>

<!--category-novel-->
<div class="bg-white">
  <div class="mx-auto max-w-7xl px-8 py-12">
    <h2 class="font-bold pb-4"> Novels : </h2>

    <div class=" grid grid-cols-4 gap-x-8 gap-y-10 relative overflow-auto overflow-y-scroll h-[500px]">
       <asp:Repeater runat="server" ID="novelRepeater" OnItemDataBound="novelRepeater_ItemDataBound">
           <ItemTemplate>
               <div href="#" class="group">
                  <div class="h-4/6 aspect-w-7 overflow-hidden rounded-lg bg-gray-200">
                    <img src="<%# Eval("ImagePath") %>"" alt="Tall slender porcelain bottle with natural clay textured body and cork stopper." 
                        class="object-fill object-center group-hover:opacity-75" 
                        >
                  </div>
                  <h3 class="mt-4 text-sm text-gray-700"><%# Eval("BookName") %></h3>
                  <p class="mt-1 text-lg font-medium text-gray-900">$<%# Eval("Price", "{0:F2}") %></p>
                  <div class="items-center text-center">
                      <asp:Button runat="server" ID="NovelSubmitBtn" CssClass="rounded-md bg-[#58220D] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm 
                              hover:bg-[#9B6740] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600" Text="Add To Cart" />
                  </div>
                </div>
           </ItemTemplate>
       </asp:Repeater>
    </div>
  </div>
  
</div>

     <!--category-fiction-->
<div class="bg-white">
  <div class="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
    <h2 class="font-bold pb-4"> Fictions: </h2>
       <div class=" grid grid-cols-4 gap-x-8 gap-y-10 relative overflow-auto overflow-y-scroll h-[500px]">
        <asp:Repeater runat="server" ID="FictionRepeater" OnItemDataBound="fictionRepeater_ItemDataBound">
            <ItemTemplate>
                <div href="#" class="group">
                   <div class="h-4/6 aspect-w-7 overflow-hidden rounded-lg bg-gray-200">
                     <img src="<%# Eval("ImagePath") %>"" alt="Tall slender porcelain bottle with natural clay textured body and cork stopper." 
                         class="object-fill object-center group-hover:opacity-75" 
                         >
                   </div>
                   <h3 class="mt-4 text-sm text-gray-700"><%# Eval("BookName") %></h3>
                   <p class="mt-1 text-lg font-medium text-gray-900">$<%# Eval("Price", "{0:F2}") %></p>
                   <div class="items-center text-center">
                       <asp:Button runat="server" ID="FictionSubmitBtn" CssClass="rounded-md bg-[#58220D] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm 
                               hover:bg-[#9B6740] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600" Text="Add To Cart" />
                   </div>
                 </div>
            </ItemTemplate>
        </asp:Repeater>
     </div>
    
  </div>
</div>

    <!--category-cartoon-->
<div class="bg-white">
  <div class="mx-auto max-w-2xl px-4 py-24 sm:px-6 lg:max-w-7xl lg:px-8">
    <h2 class="font-bold pb-4"> Cartoon : </h2>

     <div class=" grid grid-cols-4 gap-x-8 gap-y-10 relative overflow-auto overflow-y-scroll h-[500px]">
        <asp:Repeater runat="server" ID="CartoonRepeater" OnItemDataBound="cartoonRepeater_ItemDataBound">
            <ItemTemplate>
                <div href="#" class="group">
                   <div class="h-4/6 aspect-w-7 overflow-hidden rounded-lg bg-gray-200">
                     <img src="<%# Eval("ImagePath") %>"" alt="Tall slender porcelain bottle with natural clay textured body and cork stopper." 
                         class="object-fill object-center group-hover:opacity-75" 
                         >
                   </div>
                   <h3 class="mt-4 text-sm text-gray-700"><%# Eval("BookName") %></h3>
                   <p class="mt-1 text-lg font-medium text-gray-900">$<%# Eval("Price", "{0:F2}") %></p>
                   <div class="items-center text-center">
                       <asp:Button runat="server" ID="CartoonSubmitBtn" CssClass="rounded-md bg-[#58220D] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm 
                               hover:bg-[#9B6740] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600" Text="Add To Cart" />
                   </div>
                 </div>
            </ItemTemplate>
        </asp:Repeater>
     </div>
  </div>
</div>
</asp:Content>
