<!--
  't' is an arbitrary name.
  'opts.terms' needs to match the value
  we already created in our 'data_loaded'
  custom event method.
  't.word' is the attribute that every term
  object in our 'terms' object has a unique value for
-->
<word-list>
  <nav>
    <ul>
      <li each={t in opts.terms}>{t.word}</li>
    </ul>
  </nav>
  <script>
    this.on('mount', function(){
      // because tags are already observable in riot
      // you can just pass a reference to 'this'
      // as the parameter for the opts.callback
      opts.callback(this);
    });

    // providing logic for our custom
    // 'data_loaded' event method that
    // we're going to trigger within our
    // AJAX call on index.html
    // 'term' is an arbitrary parameter name
    // this.update() is used to manually update the UI
    // without it, none of our terms will load
    // http://riotjs.com/api/#a-nametag-updatea-thisupdate
    this.on('data_loaded', function(term){
      opts.terms = term
      this.update();
    });
  </script>
</word-list>
