<app>
  <nav>
    <h3>Nav</h3>
    <ul>
      <li each={color in opts.colorsList}>{color.name}</li>
    </ul>
  </nav>
  <main>
    <h1>Content</h1>
    <newTag></newTag>
    <testTag value="John"></testTag>
  </main>
</app>

<newTag>
  <h2>New Tag</h2>
  <p>Here are my friends:</p>
  <p>
    <ul>
      <li each={friend in opts.peeps}>{friend.name}</li>
    </ul>
  </p>
</newTag>

<testTag>
  <h1>{opts.value}</h1>
</testTag>
