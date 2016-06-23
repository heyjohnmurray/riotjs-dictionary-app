# RiotJS Pantry App
Creating my pantry app in RiotJS

## Concepts Learned
* Proper JSON syntax. Found a [good set of examples](https://adobe.github.io/Spry/samples/data_region/JSONDataSetSample.html).
* **A**rrays use **B**rackets [ ]. Remember A/B.
* **O**bjects use **C**urly braces { }. Remember O/C.
* Look at the "vue" project to see how they're linking page views together instead of having more standard routing.
* How to make an javascript AJAX call **without jQuery**
* How to create event methods and connect them to our UI

### Thoughts So Far
##### After about a week ...
I like the idea of having a main ```<app>``` tag in the ```index.html``` page and then putting everything inside of ```<app>```. Remember that nesting tags is as easy as creating another tag outside of the main page structure and referencing it within the desired tag. [Read the RiotJS documentation](http://riotjs.com/guide/#nested-tags) to see how to pass data between tags. It's not really difficult, but I'm having trouble passing anything more than an attribute value. I'll come back to figuring out how to access objects from other nested tags. However, I understand how to loop information and output it.

I prefer using the riot+compiler js file instead of using the RiotCLI in node to compile js tag files. It doesn't take a lot of time or effort for the browser to compile and parse the tags anyway.

###### Remember ...
* If you're going to write text within a tag, you need to wrap it in an html tag otherwise Riot will think you're trying to write javascript.


#### After about two weeks ...
Got some basic routing and stuff done, but realized for this to be more of a legit app that does backend stuff, I need to consider converting everything to run like a node app. This requires me to stop putting JS in the ```<script>``` tags inside of my riotjs ```.tag``` files.

After doing some research, this article basically states what I already realized:

http://blog.srackham.com/posts/riot-es6-webpack-apps/

In the section called "Why I don't use Riot .tag files", the author states:

> For me, tag file complexity and limitations outweigh any perceived benefits.

In his subsequent list of reasons he states what I realized:

> There is currently no support for module formats (CommonJS, AMD) – tag files compile to plain JavaScript.

I realized that in order to write to my JSON file and add more terms to my dictionary, I need to be able to use node's fs.appendFile functionality. And I can't ```require``` anything from within the ```<script>``` tag inside the RiotJS ```.tag``` file. Therefore, a change is needed.


#### After spending way too much time trying to do server side tag compilation ...
I realized that I need to use either browserify or webpack to allow the use of node's ```require()``` method. Without browserify or webpack the client side can't read the server side code that is included within the ```require()``` method. Browserify and webpack development tools that allow you to write node-style modules that compile for use in the browser.


In the end, I gave up on doing require() and realized it makes more sense to hook up everything to a database. Going to investigate MongoDB or similar solutions.


#### Database learnings
After some quick research I decided to give Firebase a shot. It's owned by Google, has realy good documentation, accepts data as JSON so I can use my existing JSON file, and it's free. So far after about an hour of tinkering I was able to set up an account, create a project, install the Firebase CLI tool, run the CLI project wizard, put all my existing project files into my "public" folder, deploy my app to the cloud, and view everything in it s new [location](https://riot-dictionary.firebaseapp.com/). Honestly, it was the easiest dev-related set up experience of my life. So much so that I'm almost waiting for something to go wrong.

In the meantime I'm reading through the [getting started guide](https://firebase.google.com/docs/web/setup) and learning how to [structure data](https://firebase.google.com/docs/database/web/structure-data), [save data](https://firebase.google.com/docs/database/web/save-data), and [retrieve data](https://firebase.google.com/docs/database/web/retrieve-data).
