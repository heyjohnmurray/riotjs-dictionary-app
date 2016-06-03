riot.tag2('word-list', '<ul> <li>libro</li> <li>plata</li> <li>mesa</li> <li>perro</li> <li>hombre</li> </ul>', '', '', function(opts) {
});

riot.tag2('script', '', '', '', function(opts) {
  this.on('before-mount', function() {
    console.log('bout to get mounted!');
  })
});
