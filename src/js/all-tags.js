riot.tag2('app', '<nav> <h3>Nav</h3> <word-list></word-list> </nav> <main> <definition-area></definition-area> </main>', '', '', function(opts) {
});

riot.tag2('word-list', '<nav> <ul> <li color="{color in opts.availableColors}">{opts.availableColors.name}</li> </ul> </nav>', '', '', function(opts) {

  console.log(availableColors);
});

riot.tag2('definition-area', '<section> <h1>term</h1> <p>definition</p> </section>', '', '', function(opts) {
});
