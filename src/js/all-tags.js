riot.tag2('app', '<nav> <h3>Nav</h3> <ul> <li each="{color in opts.colorsList}">{color.name}</li> </ul> </nav> <main> <h1>Content</h1> <newtag></newTag> <testtag value="John"></testTag> </main>', '', '', function(opts) {
});

riot.tag2('newtag', '<h2>New Tag</h2> <p>Here are my friends:</p> <p> <ul> <li each="{friend in opts.peeps}">{friend.name}</li> </ul> </p>', '', '', function(opts) {
});

riot.tag2('testtag', '<h1>{opts.value}</h1>', '', '', function(opts) {
});

riot.tag2('definition-area', '<section> <h1>term</h1> <p>definition</p> </section>', '', '', function(opts) {
});


riot.tag2('word-list', '<nav> <ul> <li each="{t in opts.terms}">{t.word}</li> </ul> </nav>', '', '', function(opts) {
    this.on('mount', function(){

      opts.callback(this);
    });

    this.on('data_loaded', function(term){
      opts.terms = term
      this.update();
    });
});
