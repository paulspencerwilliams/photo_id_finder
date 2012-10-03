photo_id_finder
===============

I've been moving my blog from wordpress.com to octopress / jekyll. This uses markdown, and in particular, images need to be added using the {% flickr_image id b } format. For this, I need to get photo ids based on image titles. Write me a command line app that allows me to search for images, and returns the ids.

However, I search for an string that matches multiple images, I will need to choose from a list, and therefore I want to see a flickr search page listing all the images, so show my an appropriate url.

I've put in a cucumber feature file, so bdd / tdd an appropriate implementation...