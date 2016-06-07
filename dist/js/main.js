riot.tag2('app', '<nav> <ul> <li>nav</li> </ul> </nav> <main> <h1>Content</h1> </main>', '', '', function(opts) {
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
