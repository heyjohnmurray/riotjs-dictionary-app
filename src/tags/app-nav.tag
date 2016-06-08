<app-nav>
  <nav>
    <ul>
      <li each={links}><a href=/{url}>{name}</a></li>
    </ul>
  </nav>

  <script>
    var self = this;

    this.links=[
      {"name": "book", "url": "book"},
      {"name": "car", "url": "car"},
      {"name": "man", "url": "man"}
    ]
  </script>
</app-nav>
