<search-form>
  <form action="" onsubmit={dynamicSearch}>
    <input type="text" value="">
    <button>Search!</button>
  </form>

  <script>
    this.dynamicSearch = function(){
      alert('submit');
    }
  </script>
</search-form>
