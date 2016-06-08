<app>
  <nav>
    <h3>Nav</h3>
    <ul>
      <li each={term in opts.termsList}><a href="#">{term.word}</a></li>
    </ul>
  </nav>
  <main id="content">

  </main>
</app>

<definition-area>
  <section>
    <h1>term</h1>
    <p>definition</p>
  </section>
</definition-area>
