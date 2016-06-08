<app>
  <nav>
    <h3>Nav</h3>
    <word-list></word-list>
  </nav>
  <main>
    <definition-area></definition-area>
  </main>
</app>

<word-list>
  <nav>
    <ul>
      <li color={color in opts.availableColors}>{opts.availableColors.name}</li>
    </ul>
  </nav>

  console.log(availableColors);
</word-list>

<definition-area>
  <section>
    <h1>term</h1>
    <p>definition</p>
  </section>
</definition-area>
