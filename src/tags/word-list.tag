<word-list>
  <ul>
    <li each={t in opts.terms}>{t.word}</li>
  </ul>
  <script>
    this.on('mount', function(){
      opts.callback(this);
    });

    this.on('data_loaded', function(term){
      opts.terms = term
      this.update();
    });
  </script>
</word-list>
