##PerfectPerusals 

You can see PerfectPerusals hosted on Heroku at **perfect-perusals.herokuapp.com**

PerfectPerusals ("PP") is a clone of GoodReads built on Ruby on Rails and a little bit of Backbone. In this ReadME, I thought that I would walk through a bit of the site, its features and some of the thoughts and challenges that I came across in creating it. 

The goal with PP is to build a number of features that would mimick that of GoodReads' core tagging and book organization capabilities but it also uses a number of gems and technologies to make the book browsing experience that much richer. 

* A complete dashboard built with BackBone with a feed of friends' events, some rudimentary statistics about what they are reading, and a minitable with information about their currently reading books 

![Dashboard](https://raw.github.com/jonathanstyu/perfect-perusals/master/Readingapp-home.png)

* Users can view public pages of users (whether they be authors or other signed up users) and books 

![Public Page](https://raw.github.com/jonathanstyu/perfect-perusals/master/Readingapp-Viewbook.png)

![User page](https://raw.github.com/jonathanstyu/perfect-perusals/master/Readingapp-UserProfile.png)

* Users can tap in on a REST-ful API that would export a particular user's activity feed or their own friend-feed. Built with RABL, this API would be helpful for a future implementation of a mobile app. 

* Basic recommendations based on highly rated reviews of books from friends 

![Recommendations](https://raw.github.com/jonathanstyu/perfect-perusals/master/Readingapp-RecentRecommendations.png)

* Uses BootStrap to create a nice clean looking website

* Uses PaperClip and AWS to the images for user profile pictures and book covers

* Uses SOLR and Sunspot to help people search for books and users by title/name

![Search](https://raw.github.com/jonathanstyu/perfect-perusals/master/Readingapp-search.png)

* Users can write reviews and attach them to the bottom of a profile page 

* PP uses BackBone to manage and organize data such as differing Bookshelves and managing recommendations from Friends. 

![Bookshelves](https://raw.github.com/jonathanstyu/perfect-perusals/master/bookshelves.gif)

Other things: 

* Take a look at [the Wiki](https://github.com/jonathanstyu/perfect-perusals/wiki/_pages) for a running diary of the challenges and thoughts I had while PerfectPerusals was being built 