# Secret Message

There is a secret message stored in the server. An encoded version of it is 
visible on the homepage for all to see, but the user does not have the key 
required to decode it. 

A multiple choice question provides answers each of which can generate a key
that will rearrange the code, but only the correct answer will do so in a way
way that reveals the real message.

## Design Approach

I built the app in ruby using a sinatra framework, and rspec so that I could 
follow a TDD approach. I kept the code for generating and decrypting the message
in a separate model; the process of generating and decrypting the coded message
was relatively simple, two arrays are created upon initialization, one 
containing all of the characters needed to generate a message, the other
containing the numerical referants needed to pull those characters from the 
first array to produce a specified message. 

The message class contains a decrypter method which takes numerical arugments
and shifts the characters of the encoded message along by a specified number 
depending upon the number entered. When the correct answer (42) is entered the 
message takes on its unencrypted form: "DON'T PANIC". With more time the message 
class could do with some refactoring regarding its attributes. 

## Intallation and Use

Run bundle install

```

bundle install

```

Use rackup to open the app in the web browser

```

rackup config.ru

```

Enter the local-host into your web browser to start the app

```

http://localhost:9292

```