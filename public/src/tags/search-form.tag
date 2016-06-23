<search-form>
  <form onsubmit={addToDictionary}>
    <input type="text" name="word">
    <input type="text" name="englishDefinition">
    <button>Search!</button>
  </form>

  <script type="text/javascript">
    // helpful search article: http://osvaldas.info/real-time-search-in-javascript
    this.addToDictionary = function(){
      this.term = this.word.value
      this.english = this.englishDefinition.value

      var jsonValue = JSON.stringify({"word": this.term, "englishTerm": this.english});

      console.log(jsonValue);
    }
  </script>
</search-form>
