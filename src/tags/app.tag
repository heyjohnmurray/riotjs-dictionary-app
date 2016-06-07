<app>
  <nav>
    <h3>Nav</h3>
    <ul>
      <li each={color in opts.colorsList}>{color.name}</li>
    </ul>
  </nav>
  <main>
    <h1>Content</h1>
  </main>
</app>
