#Styling and Gems

##Tuesday
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


##Thursday
>> rails new blog_site
>> cd blog_site
>> rails generate scaffold blog title:string description:string
>> rake db:migrate

The rails generate scaffold blog will create three routes automatically. 
/blogs/new
/blogs/1/edit
/blogs/{id}

The /blogs/new route is where you will go in order to create your first new blog post.

Go to localhost:3000/blogs/new and you can see that there is already a title and description set up for your blog.

The button has been automatically created by Rails, and it, like everything in your blog, you can change the text, the color, the shapes, and the fonts that are shown. This is called styling. 

Most of what you need to get your Rails applications to look good, is to STYLE them.

- We went into the Blogs folder in our application and then
- We went into the _form.html.erb file in order to make some style changes to our blog.
- We went to the top of our _form.html.erb file and we began to style by creating classes.

1. We added ‘class’ to each of the div class “field” form entries, and we put in things like:
   class: “border-radius: 3px” and
   class: “font-size: 12px” and
   class: “font-family: verdana” and
   class: “width: 200px"

2. We then added the styles that we added to this _form.html.erb file, to a separate file.

3. We opened a new file in the stylesheets folder & created a new file that we named “form_styles.css” and we copied the test styles below into that .css file (or style sheet)
   *Then we looked at how these style changes affected the blog.

We then started with introduction to *Bootstrap*

1. Go to: https://github.com/twbs/bootstrap-sass
	- Look down on the page in the ReadMe file to find this:
	gem 'bootstrap-sass', '~> 3.3.6'
	gem 'sass-rails', '>= 3.2'

2. Copy the above two lines into the Gemfile in your application (in the Ruby application, all the way at the bottom, UNDER the asterisks*** 

3. Go to the Terminal and type 
	>> bundle install

   *If you get an error (because the bootstrap gem is already installed) then just remove the duplicate line from your gemfile and run ‘bundle install’ again.

4. Now go to your application folder and rename the file “application.css” into “application.scss.” Save it.

5. Add the following two lines of code to the bottom of your application.scss file:
	@import "bootstrap-sprockets";
	@import “bootstrap";

6. Now go back to your _form.html.erb file and remove the word “Input” from the two places where it appears. Leave the quotes, we will be adding something else!

7. We will add the style that we have copied to the area by pasting class: "form-control" into the text-field lines in the “field” part of your _form.html.erb file

#QUICK TIP
Use this website *http://htmlcolorcodes.com/color-names*
It will allow you to reference or to create the different colors with their hex numbers, or with their rgb code (example, either paste in #fb0347 for a red color, or paste in rgb(176,193,0) for a green color: 

#IMPORTANT!
The <%=yield%> is in the application.html.erb file it holds elements for every page. 
   
   This tag is in the application.html.erb file, and if you put a word inside of this tag, that word will appear on every single page of the application. Try it!

We will do more styling in upcoming classes. Check out the Bootstrap CSS site for more info on the options and templates you have available to use: *http://getbootstrap.com/css/*



