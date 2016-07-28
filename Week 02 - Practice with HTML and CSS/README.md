#Practice with HTML/CSS

## Tuesday
- CSS overview [CSS introduction](http://www.w3schools.com/css/css_intro.asp)
- What are classes? 
	- css selector .class [w3schools on classes](http://www.w3schools.com/html/html_classes.asp)
- What are Ids?
	- css selector #id [w3schools on id](http://www.w3schools.com/tags/att_global_id.asp)
- [Divs](http://www.w3schools.com/tags/tag_div.asp)
- Add classes and Ids to portfolio page:
	- create a set of images of cool places you have been to
	- create a table with these images
- Difference between [id and class](https://css-tricks.com/the-difference-between-id-and-class/)

- CSS positioning [What display: means](https://kilianvalkhof.com/2008/css-xhtml/understanding-css-positioning-part-1/)

###Extras
- [FreeCodeCamp](https://www.freecodecamp.com/challenges/say-hello-to-html-elements)
	-  Need more practice with HTML and CSS? Practice makes it much more effortless to create pages with HTML/CSS. 
- Another great way to practice is find a website and try to recreate the entire website exactly as it looks, it will force you to learn a lot!


## Thursday
- Navigation bar, for Home and About
	1. Create an unordered list
	2. add a list item
	3. add a link wiht <%link_to "About", about_path%>
	example:
	```html
	<ul class="nav navbar-nav">
	  <li><%=link_to "ABOUT", about_us_path%></li>
	  <li><%=link_to "OUR SERVICES", our_services_path %></li>
	</ul>
	```

	CSS
	```css
	ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 60px;
	} 

	li a {
	    display: block;
	}
	```
- Continue to work on Portfolio
- Deploy portfolio app to Heroku
	- [How to Deploy](https://devcenter.heroku.com/articles/git)
		- Deploy with github
- What is a domain? - [Video](https://www.youtube.com/watch?v=nseH93yOy7A)
- Custom Free/cheap Domains
	- [88 cent domains!](https://www.namecheap.com/promos/2016/crazy-88.aspx)
	- [Free .tk domains](http://www.dot.tk/en/index.html?lang=en)
- Route .tk Domain to your Heroku app
	1. Find a domain you like at http://www.dot.tk/en/index.html?lang=en with search
	2. Press "go" to go to register domain page
	3. Choose "Forward this domain to" and put heroku domain in the text box (myapp.heroku.com)
	4. Choose 12 months
	5. click "sign up"
	6. Choose sign up with email (below the facebook option)
	7. Go to your domain to see your site!

###Extras
- Commandline Review

	- Open the finder 
		open .
	- Print working directory
		pwd
	- List
		ls
	- Change directory
		cd
	- Change to the parent directory
		'cd ..'
	- Make directory
		mkdir
	- Remove
		rm

