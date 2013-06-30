User.create(email: "jon@", password: "pass")
User.create(email: "jenny@", password: "pass")

# Authors 
User.create(name: "hasuna isakura")
User.create(name: "murakami")
User.create(name: "jay rubin")
User.create(name: "paul starr")
User.create(name: "hajime isayama")

Book.create(title: "kafka at the shore", synopsis: "Kafka on the Shore, a tour de force of metaphysical reality, is powered by two remarkable characters: a teenage boy, Kafka Tamura, who runs away from home either to escape a gruesome oedipal prophecy or to search for his long-missing mother and sister; and an aging simpleton called Nakata, who never recovered from a wartime affliction and now is drawn toward Kafka for reasons that, like the most basic activities of daily life, he cannot fathom. Their odyssey, as mysterious to them as it is to us, is enriched throughout by vivid accomplices and mesmerizing events. Cats and people carry on conversations, a ghostlike pimp employs a Hegel-quoting prostitute, a forest harbors soldiers apparently unaged since World War II, and rainstorms of fish (and worse) fall from the sky. There is a brutal murder, with the identity of both victim and perpetrator a riddle - yet this, along with everything else, is eventually answered, just as the entwined destinies of Kafka and Nakata are gradually revealed, with one escaping his fate entirely and the other given a fresh start on his own", cover_image: "http://d.gr-assets.com/books/1348995813l/4929.jpg")
Book.create(title: "norwegian wood", synopsis: "This stunning and elegiac novel by the author of the internationally acclaimed Wind-Up Bird Chronicle has sold over 4 million copies in Japan and is now available to American audiences for the first time.It is sure to be a literary event.", cover_image: "http://d.gr-assets.com/books/1320451630l/11297.jpg")
Book.create(title: "spice and wolf 1", synopsis: "The life of a traveling merchant is a lonely one, a fact with which Kraft Lawrence is well acquainted. Wandering from town to town with just his horse, cart, and whatever wares have come his way, the peddler has pretty well settled into his routine-that is, until the night Lawrence finds a wolf goddess asleep in his cart. Taking the form of a fetching girl with wolf ears and a tail, Holo has wearied of tending to harvests in the countryside and strikes up a bargain with the merchant to lend him the cunning of 'Holo the Wisewolf' to increase his profits in exchange for taking her along on his travels. What kind of businessman could turn down such an offer? Lawrence soon learns, though, that having an ancient goddess as a traveling companion can be a bit of a mixed blessing. Will this wolf girl turn out to be too wild to tame?", cover_image: "http://d.gr-assets.com/books/1340904653l/6483360.jpg")
Book.create(title: "attack on titan 1", synopsis: "In this post-apocalytpic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what's left of man has hidden in a giant, three-walled city. People believe their 100-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything." ,cover_image: "http://www.bubblews.com/assets/images/news/2043913104_1365335014.jpg")

Authorship.create(book_id: 1, author_id: 4)
Authorship.create(book_id: 1, author_id: 5)
Authorship.create(book_id: 2, author_id: 4)
Authorship.create(book_id: 2, author_id: 5)
Authorship.create(book_id: 4, author_id: 7)
Authorship.create(book_id: 3, author_id: 6)
Authorship.create(book_id: 3, author_id: 3)

Review.create(title: "Crazy!", body: "There was so much going on that I loved it.", stars: 4, reviewer_id: 2, book_id: 4)