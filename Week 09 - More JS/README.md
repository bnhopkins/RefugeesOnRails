# More JS

##Tuesday
- Scope & Closures
- Merging Profile page with Blog
 - Your current index file should look something like 
<syntaxhighlight lang="ruby" line>
 <div class="container"> 
  <p id="notice"><%= notice %></p>
  <div class="row">
    <div class="col-xs-12 col-sm-9">
      <h1>Posts</h1>
    </div>
    <div class="col-xs-12 col-sm-3">
      <%= link_to 'New Post', new_post_path, :class => "btn btn-primary" %>  
    </div>
  </div>
  <div class="row">
    <%= render partial: @posts  %>
  </div>
  <div class="row">
      <hr>
    <%= link_to 'New Post', new_post_path, :class => "btn btn-primary" %> 
  </div>
 </div>
</syntaxhighlight>
 - Just below the div with class="container" we will add our navigation menu. There is a detailed navbar tutorial on w3schools](http://www.w3schools.com/bootstrap/bootstrap_navbar.asp)
<syntaxhighlight lang="ruby">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">YourName</a>
      </div>
      <ul class="nav navbar-nav">
        <li><a href="#">Home</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Contact</a></li>  
      </ul>
    </div>
  </nav>
</syntaxhighlight>
 - refresh your page to see if the nav bar has appeared. You can customize this as needed. 
 - Click on one of your existing blog entries and you will notice that the menu will disappear. This is because we have only added the menu to the index page. We can copy our current menu code to each page in our project but if we make any changes to the menu this will become difficult to maintain (much like inline styles).
 - create a file called _mainmenu.html.erb in the same directory as your index file. 
 - copy the menu code to the _mainmenu.html.erb file
 - replace the menu code in the index.html.erb file with <code><%= render 'mainmenu' %></code>.
 - Refresh the page to make sure that the menu appears. Put the <code><%= render 'mainmenu' %></code> code where ever you want the menu to appear. Now, if we want to add/remove an item to the menu we just have to change one file (_mainmenu.html.erb). 
 - kill your server and in the commandline write <code>rails generate controller static_pages home contact </code>
 - in the _config.routes.rb_ file we need to check to make sure that we have  
<syntaxhighlight lang="ruby">
	get  'static_pages/home'
  	get  'static_pages/contact'
</syntaxhighlight>
 - just below this let us add <code>get 'contact', to: 'static_pages#contact'</code> which will link the www.domain.com/contact to the contact page. 
 - Also in this file let's change the root page to <code>root 'static_pages#home'</code>
 - Restarting the rails server and refreshing our page we now see that the static home page is our main page of the project. 
 - replace the content of the home.html.erb and contact.html.erb with 
<syntaxhighlight lang="ruby" line>
<div class="container">
	<%= render '/posts/mainmenu' %>
	<p id="notice"><%= notice %></p>
</div>
</syntaxhighlight>
 - Go to your original profile page project and add in the content of your home.html.erb file. Also make sure you copy of over any images, custom css code, java script, etc that you might have used in your original project. 
-- Finally we need to update our menu and link everything together. In the _mainmenu.html.erb file we need to make update it as below. 
<syntaxhighlight lang="ruby" line>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">YourName</a>
    </div>
    <ul class="nav navbar-nav">
      <li><%= link_to 'Home', root_path %></li>
      <li><%= link_to 'Blog', posts_path %></li>
      <li><%= link_to 'Contact', contact_path %></li> 
    </ul>
  </div>
</nav> 
</syntaxhighlight>


- [User Authentication](https://www.sitepoint.com/devise-authentication-in-depth/)


##Thursday
- This & Object Prototypes
