riot.tag2('section', '<h1>Book</h1> <p>The definition for "book" will go here.</p>', '', '', function(opts) {
});

riot.tag2('section', '<h1>Car</h1> <p>The definition for "car" will go here.</p>', '', '', function(opts) {
});

riot.tag2('definition-area', '<section> <h1>term</h1> <p>definition</p> </section>', '', '', function(opts) {
});

riot.tag2('section', '<h1>Man</h1> <p>The definition for "man" will go here.</p>', '', '', function(opts) {
});


riot.tag2('word-list', '<ul> <li each="{t in opts.terms}">{t.word}</li> </ul>', '', '', function(opts) {
    this.on('mount', function(){

      opts.callback(this);
    });

    this.on('data_loaded', function(term){
      opts.terms = term
      this.update();
    });
});
