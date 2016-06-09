<app-content>
  <main>
    <h1>{title}</h1>
    <p>{body}</p>
  </main>

  <script>
    var self = this;

    // defaults
    self.title = 'Spanish/English Dictionary';
    self.body = '';

    var r = riot.route.create();
    r('/', home);
    r('book', book);
    r('car', car);
    r('man', man);

    function home(){
      self.update({
        title: 'Welcome to the Spanish/English dictionary. This project was made with RiotJS.',
        body: 'You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don\'t know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I\'m breaking now. We said we\'d say it was the snow that killed the other two, but it wasn\'t. Nature is lethal but it doesn\'t hold a candle to man.'
      });
    }

    function book(){
      self.update({
        title: 'Book',
        body: 'Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that\'s what you see at a toy store. And you must think you\'re in a toy store, because you\'re here shopping for an infant named Jeb.'
      });
    }

    function car(){
      self.update({
        title: 'Car',
        body: 'My money\'s in that office, right? If she start giving me some bullshit about it ain\'t there, and we got to go someplace else and get it, I\'m gonna shoot you in the head then and there. Then I\'m gonna shoot that bitch in the kneecaps, find out where my goddamn money is. She gonna tell me too. Hey, look at me when I\'m talking to you, motherfucker. You listen: we go in there, and that nigga Winston or anybody else is in there, you the first motherfucker to get shot. You understand?'
      });
    }

    function man(){
      self.update({
        title: 'Man',
        body: 'Now that we know who you are, I know who I am. I\'m not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain\'s going to be? He\'s the exact opposite of the hero. And most times they\'re friends, like you and me! I should\'ve known way back when... You know why, David? Because of the kids. They called me Mr Glass.'
      });
    }

  </script>
</app-content>
