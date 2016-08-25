#MVC - Model View Controller and Working with Rails

###Goals:
- Awareness of MVC structure within a Rails application
- Ability to model classes and to apply methods and inheritance properties
- Understanding of controller logic, syntax & connection to routes

Form code:

```
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


add to app/controllers/articles_controller.rb :

def create
 @article = Article.new(params.require(:article).permit(:title, :text)) 
  @article.save
  redirect_to @article
end


add to app/controllers/articles_controller.rb

def show
    @article = Article.find(params[:id])
  end



create a new file app/views/articles/show.html.erb

then add this

<p>
  <strong>Title:</strong>
  <%= @article.title %>
</p>
 
<p>
  <strong>Text:</strong>
  <%= @article.text %>
</p>
```



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

MVC Review
- what is the role of the Model and Controller and View  
- what happens in the database folder when you create a model
- what happens in the controller folder when you create a controller
- what migrations are and do

The MODEL defines information about an object (Pet) in the database.
The CONTROLLER defines what information from the database to use in a view.
The VIEW is the HTML page where the user sees what the CONTROLLER tells it to show.

The MODEL holds all the information to describe an object. The MODEL allows you to create a database table that describes a thing, or object. In class, we talked about a website to display different pets. We built a model for this and it included:
- pet name
- pet type
- pet size (weight)
- pet owner

1). This MODEL was created from the command line:
>> rails generate model pet name: string type: string size: integer description: text owner: owner_id

2). This created a file in the rails application, in the MODEL folder, that looks like this:
class Pet < ActiveRecord::Base
end

3). This model also creates a table in the database, that matches the model. When the model is generated from the command line as above, the table created in the database will look like this:

Class CreatePets < ActiveRecord::Migration
create_table :pets do |t|
t.string: name
t.string: type
t.integer: size
t.text: description
t.integer: owner:id

- We discussed the owner as a part of the 'pet' object that is an attribute or characteristic of each pet (all pets have an owner, a size, a description).

- The owner might have lots of information that we want to capture as well (such as the owner's address, the owner's phone number, etc.)

- If there are many attributes that describe an owner, and we want to save them in our database, we probably should create an owner MODEL also!
 
4). Once we generated a model from the command line, we ran a migration to create a table in the database.
>> rake db: migrate

5). We also discussed what to do to add another attribute to your model (which means to add another column to the database). Let's try pet color:
>> rails generate migration AddColorFieldToTable

You can check to see if a new migration file exists in your application's DB folder, or simply look in the DB file called schema.rb to see the table with the additional 'color' column

6). We also talked about controllers and what they do. Basically, the browser you use to search for web pages on the internet goes to an address, or URL, to get information.

If you create a Controller without a model, you'll see an error.
If you create a Model and a Controller and no view, you'll see an error.
If you create a Model, a View and a Controller, you can control what users see on your blog, and you can control what types of information is in the database

To create a file in your Controllers folder, run the following command from the command line:
>> rails generate controller pet

This will create a file in you application Controller file that looks like this:

class PetsController < ApplicationController
def new
end

Consider what objects, or models, you need to create your blog project. Once you have created model(s) and controller(s) for your blog project, we will move on to styling the VIEW(s), which is what your users will see on each page that you create. 


Resources:
[Writing classes](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html)
[Controllers](http://www.tutorialspoint.com/ruby-on-rails/rails-controllers.htm)
[On Routing](http://www.theodinproject.com/ruby-on-rails/routing)
[Comprehensive HTML5 and CSS exercises online](http://www.freecodecamp.com/)
[Ruby Gems overview](http://guides.rubygems.org/rubygems-basics/)









