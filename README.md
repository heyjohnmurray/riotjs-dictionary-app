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
