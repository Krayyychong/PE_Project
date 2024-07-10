<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PE_Project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="About" runat="server">

<!--welcome section-->
<div class="relative isolate overflow-hidden bg-gray-900 py-24 sm:py-32">
  <img src="Image/about-welcome.jpg" alt="" class="absolute inset-0 -z-10 h-full w-full object-cover object-right md:object-center">
  <div class="hidden sm:absolute sm:-top-10 sm:right-1/2 sm:-z-10 sm:mr-10 sm:block sm:transform-gpu sm:blur-3xl" aria-hidden="true">
    <div class="aspect-[1097/845] w-[68.5625rem] bg-gradient-to-tr from-[#ff4694] to-[#776fff] opacity-20" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
  </div>
  <div class="absolute -top-52 left-1/2 -z-10 -translate-x-1/2 transform-gpu blur-3xl sm:top-[-28rem] sm:ml-16 sm:translate-x-0 sm:transform-gpu" aria-hidden="true">
    <div class="aspect-[1097/845] w-[68.5625rem] bg-gradient-to-tr from-[#ff4694] to-[#776fff] opacity-20" style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)"></div>
  </div>
  <div class="mx-auto max-w-7xl px-6 lg:px-8">
    <div class="mx-auto max-w-2xl lg:mx-0">
      <h2 class="text-4xl font-bold tracking-tight text-white sm:text-6xl">About us</h2>
      <p class="mt-6 text-lg leading-8 text-gray-300">Our Store's Story........</p>
    </div>
  </div>
</div>

<!--About us-->
<div class="bg-white">
  <div class="mx-auto w-full px-6">
    <div class="mx-auto max-w-2xl py-10 lg:max-w-none">

      <div class="mt-6 space-y-12 lg:grid lg:grid-cols-3 lg:gap-x-6 lg:space-y-0">
        <!--Image-->
        <div class="group relative">
          <div class="relative h-80 w-full overflow-hidden rounded-lg bg-white sm:aspect-h-1 sm:aspect-w-2 lg:aspect-h-1 lg:aspect-w-1 group-hover:opacity-75 sm:h-64">
            <img src="https://tailwindui.com/img/ecommerce-images/home-page-02-edition-01.jpg" alt="Desk with leather desk pad, walnut desk organizer, wireless keyboard and mouse, and porcelain mug." class="h-full w-full object-cover object-center">
          </div>
          <h1 class="mt-6 text-sm text-gray-500">
            <a href="#">
              <span class="absolute inset-0"></span>
              Our Trajectory
            </a>
          </h1>
          <p class="text-xl font-semibold text-gray-900">History</p>
        </div>
        <div class="col-span-2 pt-6">
            <p>
                Welcome to our bookstore, a beloved literary haven that has been inspiring readers since its establishment in the year 2000. 
                Born out of a passion for books and a desire to create a community hub for book lovers, our store started as a small, 
                independent shop with a mission to provide a diverse selection of literature and a welcoming space for all.
                <br/>
                Over the past two decades, our bookstore has grown from a humble beginning to become a cherished part of the community. 
                Despite the rapid changes in the digital age, we have remained a steadfast advocate for the printed word, 
                continuously expanding our collection and hosting numerous author events, book clubs, and community gatherings. 
                Our journey from a fledgling bookstore to a vibrant cultural hub is a testament to our enduring commitment to fostering a love for 
                reading and bringing people together through the power of stories.
            </p>
        </div>
      </div>
      
    </div>
  </div>
</div>
<div class="bg-[#DDC7B5]">
  <div class="mx-auto w-full px-6">
    <div class="mx-auto max-w-2xl py-10 lg:max-w-none">

      <div class="mt-6 space-y-12 lg:grid lg:grid-cols-3 lg:gap-x-6 lg:space-y-0">
        <div class="col-span-2 pt-6">
            <p>
                Welcome to our bookstore, a beloved literary haven that has been inspiring readers since its establishment in the year 2000. 
                Born out of a passion for books and a desire to create a community hub for book lovers, our store started as a small, 
                independent shop with a mission to provide a diverse selection of literature and a welcoming space for all.
                <br/>
                Over the past two decades, our bookstore has grown from a humble beginning to become a cherished part of the community. 
                Despite the rapid changes in the digital age, we have remained a steadfast advocate for the printed word, 
                continuously expanding our collection and hosting numerous author events, book clubs, and community gatherings. 
                Our journey from a fledgling bookstore to a vibrant cultural hub is a testament to our enduring commitment to fostering a love for 
                reading and bringing people together through the power of stories.
            </p>
        </div>
        <div class="group relative">
          <div class="relative h-80 w-full overflow-hidden rounded-lg bg-white sm:aspect-h-1 sm:aspect-w-2 lg:aspect-h-1 lg:aspect-w-1 group-hover:opacity-75 sm:h-64">
            <img src="https://tailwindui.com/img/ecommerce-images/home-page-02-edition-01.jpg" alt="Desk with leather desk pad, walnut desk organizer, wireless keyboard and mouse, and porcelain mug." class="h-full w-full object-cover object-center">
          </div>
          <h1 class="mt-6 text-sm text-gray-500">
            <a href="#">
              <span class="absolute inset-0"></span>
              Our Trajectory
            </a>
          </h1>
          <p class="text-xl font-semibold text-gray-900">History</p>
        </div>
      </div>
      
    </div>
  </div>
</div>

<!--Data-->
<div class="bg-white py-24 sm:py-32">
  <div class="mx-auto max-w-7xl px-6 lg:px-8">
    <dl class="grid grid-cols-1 gap-x-8 gap-y-16 text-center lg:grid-cols-3">
      <div class="mx-auto flex max-w-xs flex-col gap-y-4">
        <dt class="text-base leading-7 text-gray-600">Transactions every 24 hours</dt>
        <dd class="order-first text-3xl font-semibold tracking-tight text-gray-900 sm:text-5xl">44 million</dd>
      </div>
      <div class="mx-auto flex max-w-xs flex-col gap-y-4">
        <dt class="text-base leading-7 text-gray-600">Assets under holding</dt>
        <dd class="order-first text-3xl font-semibold tracking-tight text-gray-900 sm:text-5xl">$119 trillion</dd>
      </div>
      <div class="mx-auto flex max-w-xs flex-col gap-y-4">
        <dt class="text-base leading-7 text-gray-600">New users annually</dt>
        <dd class="order-first text-3xl font-semibold tracking-tight text-gray-900 sm:text-5xl">46,000</dd>
      </div>
    </dl>
  </div>
</div>

<!-- Our Team -->
<div class="bg-white">
  <div class="mx-auto grid w-full gap-x-8 gap-y-20  grid-cols-3 bg-[#DDC7B5]">
      <!--Side Text-->
    <div class="max-w-2xl bg-[#58220D] content-center text-center">
        <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl py-">Our Team</h2>
    </div>
      
      <!--Member list-->
    <ul role="list" class="mt-6 px-6 py-6 grid gap-x-8 sm:grid-cols-2 gap-y-16 col-span-2">
        <!--Chong Kai Ying-->
      <li>
        <div class="flex items-center gap-x-6">
          <img class="h-16 w-16 rounded-full" src="Image/profile.jpg" alt="">
          <div>
            <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Chong Kai Ying</h3>
            <p class="text-sm font-semibold leading-6 text-gray-700/50"> SWE2109029</p>
          </div>
        </div>
      </li>
        <!--Benali-->
      <li>
          <div class="flex items-center gap-x-6">
            <img class="h-16 w-16 rounded-full" src="Image/profile.jpg" alt="">
            <div>
              <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Benali Nejd</h3>
              <p class="text-sm font-semibold leading-6 text-gray-700/50">SWE2109903</p>
            </div>
          </div>
      </li>
        <!--Xu Yuxuan-->
      <li>
          <div class="flex items-center gap-x-6">
            <img class="h-16 w-16 rounded-full" src="Image/profile.jpg" alt="">
            <div>
              <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Xu Yuxuan</h3>
              <p class="text-sm font-semibold leading-6 text-gray-700/50">SWE2109567</p>
            </div>
          </div>
       </li>
        <!-- Wang Chenxuan -->
      <li>
        <div class="flex items-center gap-x-6">
        <img class="h-16 w-16 rounded-full" src="Image/profile.jpg" alt="">
        <div>
            <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">Wang Chenxuan</h3>
            <p class="text-sm font-semibold leading-6 text-gray-700/50">SWE2109541</p>
        </div>
        </div>
      </li>

      <!-- More people... -->
    </ul>
  </div>
</div>

<!--Contact us-->
<div class="relative isolate overflow-hidden bg-white py-10">
  <div class="px-6">
    <h2 class="text-3xl font-bold tracking-tight text-black sm:text-4xl">Contact Us</h2>
    <p class="mt-4 text-lg leading-8 text-gray-500">Welcome your suggestions!</p>
  </div>
  <div class="mx-auto w-full px-6 lg:px-8 py-10">
    
    <div class="mx-auto grid w-full grid-cols-3 gap-x-8 gap-y-16">
      <div class="w-full lg:max-w-lg span-cols-2">
        <!-- Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16907.189969528084!2d101.69589917535673!3d2.8279319655818367!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdc77dffa92899%3A0x25b5e828613a7db9!2sXiamen%20University%20Malaysia!5e0!3m2!1sen!2smy!4v1700654127645!5m2!1sen!2smy" 
           width="100%" height="420" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
          </iframe>
      </div>
      
      <div class="grid gap-x-8 gap-y-10 py-10">
        <div class="justify-items-center w-full gap-x-4">
          <label for="emailAddress">Email address:</label>
          <asp:TextBox ID="emailAddress" runat="server" Text="Enter Your Email" Columns="90"
              CssClass="min-w-0 flex-auto rounded-md border bg-white/5 px-3.5 py-2 text-gray-300 shadow-sm ring-1 ring-inset ring-white/10 focus:ring-2 focus:ring-inset focus:ring-indigo-500 sm:text-sm sm:leading-6"></asp:TextBox>
        </div>
        <div class="justify-items-center w-full gap-x-4">
          <label for="advice">Your Advice:</label>
          <asp:TextBox ID="advice" Columns="90" Rows="500" runat="server" CssClass="min-w-0 flex-auto rounded-md border bg-white/5 px-3.5 py-2 text-black shadow-sm ring-1 ring-inset ring-white/10 focus:ring-2 focus:ring-inset focus:ring-indigo-500 sm:text-sm sm:leading-6"></asp:TextBox>
        </div>
        <div class="text-center w-full">
            <asp:Button runat="server" ID="contactSubmitBtn" Text="SUBMIT" 
                CssClass="rounded-md bg-[#58220D] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm 
                                hover:bg-[#9B6740] focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600"
                />
        </div>
      </div>
    </div>
  </div>
</div>


</asp:Content>

