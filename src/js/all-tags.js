
riot.tag2('app-nav', '<nav> <ul> <li each="{links}">{name}</li> </ul> </nav>', '', '', function(opts) {
    var self = this;

    this.links=[
      {"name": "book", "url": "book"},
      {"name": "car", "url": "car"},
      {"name": "man", "url": "man"}
    ]
});

riot.tag2('app', '<app-nav></app-nav> <app-content></app-content>', '', '', function(opts) {
});
