#Styling and Gems

##Tuesday

TBD - continue with styling & bootstrap or other gem usage

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

-  We went into the Blogs folder in our application and then
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

*QUICK TIP*
Use this website *http://htmlcolorcodes.com/color-names*
It will allow you to reference or to create the different colors with their hex numbers, or with their rgb code (example, either paste in #fb0347 for a red color, or paste in rgb(176,193,0) for a green color: 

IMPORTANT!
The <%=yield%> is in the application.html.erb file it holds elements for every page. 
   
   This tag is in the application.html.erb file, and if you put a word inside of this tag, that word will appear on every single page of the application. Try it!

We will do more styling in upcoming classes. Check out the Bootstrap CSS site for more info on the options and templates you have available to use: *http://getbootstrap.com/css/*





##Tuesday
Lesson Goals

Understand the 3 ways in which styles could be defined. 1hr [May not be necessary depending on class' understanding of CSS though vital to understanding the wins with a gem like bootstrap]
Appreciate the role that the bootstrap gem plays. 1.5 hrs
Understand responsive design. 0.5hr [Not Crucial]
Assignment/group work.

Approach
Understand the 3 ways in which styles could be defined.
- Demonstrate the pain with replicating modifications for the same visual display multiple times accross elements.
1. Apply inline style to any of the textboxes in the blog form. (border-radius: 5px; height: 23px; width: 278px;)
2. Apply the same inline style on all other input boxes.
3. Modify one of the inline styles.
4. Apply the same modification to all the inline styles.

- Demonstrate how this pain can be eased. Eventually introducing styling of html elements using classes.
1. Extract inline style as a class into separate style block on top of form.
2. Replace inline style on individual elements with reference to the defined class in the extracted block.
3. Now change color of input box to blue. (color: blue)
4. Refresh page to reflect modified input box attributes.
5. Extract style block into a separate file (form_fields.css) to show that this can actually be decoupled further.
6. Set input box font size to 20px (font-size: 18px;).

- Demonstrate different sections of the same page can be styled differently. Eventually introducing styling of html elements using ids and element tags.
1. Add style for `Back` link in form_fields.css refrencing it the `back-link` id. Set text color to green (color: green).
2. Refresh page. This should not change anything on the screen.
3. Add the `id` attribute to the `Back` link on the `new blog` page.
4. Refresh page. This should change how the link looks. Hopefully demonstrates how the styles have to be tied to the controls inorder to see the expected visual effects.
4. Change the `back-link` id to `a` and see all the link in the application assuming the newly created format. This illustrates referencing elements by their tag names in style sheets.
5. To introduce the next section, explain that there are small applications that have a variety of classes already built for styling our pages so developers dont have to these from scratch. All we have to do is add these small applications in our application and reference styles that have been defined already by those applications.

Appreciate the role that the bootstrap gem plays.
1. Install the bootstrap gem. Follow instructions here https://github.com/twbs/bootstrap-sass.
2. Check all styles in the form section of the documentation here http://getbootstrap.com/css/#forms.
3. Apply those styles in the current application forms. Be sure to have stashed everything from the previous sections of the lesson.
4. Add alert messages to the application using styling provided by the bootstrap gem.

Understand responsive designs
1. Explain the 4 screen sizes supported by bootstrap. (xs, sm, md, lg)
2. Explain that each screen is divided into 12 columns.
3. Show how this done with a simple div.
   Create div with the following style: height: 40px, width: 100%, background-color: green, display: block
   Test the following
     <div class="col-md-6"></div>
     <div class="col-md-6"></div>

     <div class="col-md-3"></div>
     <div class="col-md-9"></div>

     <div class="col-md-4"></div>
     <div class="col-md-8"></div>

     <div class="col-md-12"></div>

     <div class="col-md-11"></div>
     <div class="col-md-3"></div>
4. Show how this is relevant to small screens.
   Test the following whiles toggling between full screen and android screen modes
     <div class="col-sm-3 col-md-6"></div>
     <div class="col-sm-9 col-md-6"></div>

     <div class="col-sm-12 col-md-6"></div>
     <div class="col-md-12 col-md-6"></div>


Assignment/Group Work:
Create a page that has a layout for medium sized screens which is different for extra small sized screens.



##Thursday

TBD - continue with styling & bootstrap or other gem usage
