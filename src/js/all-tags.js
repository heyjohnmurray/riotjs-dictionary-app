riot.tag2('app', '<nav> <h3>Nav</h3> <ul> <li each="{term in opts.termsList}">{term.word}</li> </ul> </nav> <main> <definition-area></definition-area> </main>', '', '', function(opts) {
});

riot.tag2('definition-area', '<section> <h1>term</h1> <p>definition</p> </section>', '', '', function(opts) {
});
