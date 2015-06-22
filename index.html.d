<!DOCTYPE html>
<html>
  <head>
    <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
    <link rel="import" href="name-tag.html">
    <link rel="import" href="bower_components/paper-material/paper-material.html">
    <link rel="import" href="bower_components/paper-input/paper-input.html">
    <link rel="import" href="bower_components/paper-button/paper-button.html">
    <link rel="import" href="bower_components/theme/everest.html">
  </head>
  <body>
    <name-tag></name-tag>
    <p style="color: green">Hi! I've just started this webpage, and I'll be working on improving on it later.</p>
    <div id="Greeting! "></div>
    
    <paper-material elevation="1">
      <paper-input label="Your Name? "></paper-input>
      <paper-button>Say Hello!</paper-button>
    </paper-material>


    <script>
      // To ensure that elements are ready on polyfilled browsers, 
      // wait for WebComponentsReady. 
      document.addEventListener('WebComponentsReady', function() {
        var input = document.querySelector('paper-input');
        var button = document.querySelector('paper-button');
        var greeting = document.getElementById("greeting");
        button.addEventListener('click', function() {
          greeting.textContent = 'Hello, ' + input.value;
        });
      });
    </script>
    
  </body>
</html>
