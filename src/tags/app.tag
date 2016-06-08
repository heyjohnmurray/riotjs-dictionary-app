<app>
  <nav>
    <h3>Nav</h3>
    <ul>
      <li each={term in opts.termsList}>{term.word}</li>
    </ul>
  </nav>
  <main>
    <definition-area></definition-area>
  </main>
</app>

<definition-area>
  <section>
    <h1>term</h1>
    <p>definition</p>
  </section>
</definition-area>
