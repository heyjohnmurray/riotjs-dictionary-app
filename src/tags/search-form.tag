<search-form>
  <form onsubmit={addToDictionary}>
    <input type="text" name="word">
    <input type="text" name="englishDefinition">
    <button>Search!</button>
  </form>

  <script type="text/javascript">
    // everything is working great but i'm having to stop here
    // b/c i need to include node capability and
    // i don't think i can do in this file structure or within these tags
    // so i'm going through some node research so that i'm not stumbling

    // helpful search article: http://osvaldas.info/real-time-search-in-javascript

    // helpful article about writing and appending text to a js file in node.
    // this is how i know i need to learn some node before going any further
    // http://disasterjs.blogspot.com/2013/03/appending-text-to-file-in-nodejs.html

    var fs = require('fs');

    this.addToDictionary = function(){
      this.term = this.word.value
      this.english = this.englishDefinition.value

      var jsonValue = JSON.stringify({"word": this.term, "englishTerm": this.english});

      console.log(jsonValue);
    }
  </script>
</search-form>