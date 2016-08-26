#More on Bootstrap

##Tuesday
TBD - continue with styling & bootstrap or other gem usage

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
- Bootstrap & dynamic images
