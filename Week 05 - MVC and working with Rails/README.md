#MVC - Model View Controller and Working with Rails

###Goals:
- Awareness of MVC structure within a Rails application
- Ability to model classes and to apply methods and inheritance properties
- Understanding of controller logic, syntax & connection to routes

Form code:


<%= form_for :article, url: articles_path do |f| %>
  <p>
    <%= f.label :title %><br>
    <%= f.text_field :title %>
  </p>
 
  <p>
    <%= f.label :text %><br>
    <%= f.text_area :text %>
  </p>
 
  <p>
    <%= f.submit %>
  </p>
<% end %>




## Tuesday
- Watch [MVC Overview](https://www.youtube.com/watch?v=3mQjtk2YDkM)
- MVC overview (powerpoint)
- Basic scaffold (example)
- Style blog
- Ruby 
	- Methods and Classes


## Thurday
- Routes & database setup
- Controller logic, conventions and routes


Resources:
[Writing classes](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html)
[Controllers](http://www.tutorialspoint.com/ruby-on-rails/rails-controllers.htm)
[On Routing](http://www.theodinproject.com/ruby-on-rails/routing)
[Comprehensive HTML5 and CSS exercises online](http://www.freecodecamp.com/)
[Ruby Gems overview](http://guides.rubygems.org/rubygems-basics/)









