<app-nav>
  <nav>
    <ul>
      <!-- loop through the "links" variable and output the "name" value for each item in the list -->
      <li each={links}><a href=/{url}>{name}</a></li>
    </ul>
  </nav>

  <script>
    var self = this;

    // in the long run this should be ajax from a json file
    // this.links=[
    //   {"name": "book", "url": "book"},
    //   {"name": "car", "url": "car"},
    //   {"name": "man", "url": "man"}
    // ]

    this.on('data_loaded', function(term){
      opts.terms = term
      this.update();
    });
  </script>
</app-nav>
