User.create(email: "jon@", password: "pass", name: "jon")
User.create(email: "jenny@", password: "pass", name: "jenn")
User.create(email: "adam", password: "pass", name: "adam")

# Authors 
User.create(name: "hasuna isakura")
User.create(name: "haruki murakami")
User.create(name: "jay rubin")
User.create(name: "paul starr")
User.create(name: "hajime isayama")
User.create(name: "adam johnson")

Book.create(title: "kafka at the shore", synopsis: "Kafka on the Shore, a tour de force of metaphysical reality, is powered by two remarkable characters: a teenage boy, Kafka Tamura, who runs away from home either to escape a gruesome oedipal prophecy or to search for his long-missing mother and sister; and an aging simpleton called Nakata, who never recovered from a wartime affliction and now is drawn toward Kafka for reasons that, like the most basic activities of daily life, he cannot fathom. Their odyssey, as mysterious to them as it is to us, is enriched throughout by vivid accomplices and mesmerizing events. Cats and people carry on conversations, a ghostlike pimp employs a Hegel-quoting prostitute, a forest harbors soldiers apparently unaged since World War II, and rainstorms of fish (and worse) fall from the sky. There is a brutal murder, with the identity of both victim and perpetrator a riddle - yet this, along with everything else, is eventually answered, just as the entwined destinies of Kafka and Nakata are gradually revealed, with one escaping his fate entirely and the other given a fresh start on his own", cover_image: "http://d.gr-assets.com/books/1348995813l/4929.jpg")
Book.create(title: "norwegian wood", synopsis: "This stunning and elegiac novel by the author of the internationally acclaimed Wind-Up Bird Chronicle has sold over 4 million copies in Japan and is now available to American audiences for the first time.It is sure to be a literary event.", cover_image: "http://d.gr-assets.com/books/1320451630l/11297.jpg")
Book.create(title: "spice and wolf 1", synopsis: "The life of a traveling merchant is a lonely one, a fact with which Kraft Lawrence is well acquainted. Wandering from town to town with just his horse, cart, and whatever wares have come his way, the peddler has pretty well settled into his routine-that is, until the night Lawrence finds a wolf goddess asleep in his cart. Taking the form of a fetching girl with wolf ears and a tail, Holo has wearied of tending to harvests in the countryside and strikes up a bargain with the merchant to lend him the cunning of 'Holo the Wisewolf' to increase his profits in exchange for taking her along on his travels. What kind of businessman could turn down such an offer? Lawrence soon learns, though, that having an ancient goddess as a traveling companion can be a bit of a mixed blessing. Will this wolf girl turn out to be too wild to tame?", cover_image: "http://d.gr-assets.com/books/1340904653l/6483360.jpg")
Book.create(title: "attack on titan 1", synopsis: "In this post-apocalytpic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what's left of man has hidden in a giant, three-walled city. People believe their 100-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything." ,cover_image: "http://d.gr-assets.com/books/1333581013l/13154150.jpg")
Book.create(title: "The Orphan Master's Son", synopsis: "An epic novel and a thrilling literary discovery, The Orphan Master's Son follows a young man's journey through the icy waters, dark tunnels, and eerie spy chambers of the world's most mysterious dictatorship, North Korea.", cover_image: "http://d.gr-assets.com/books/1327878601l/11529868.jpg")
Book.create(title: "Attack on titan 2", synopsis: "The Colossal Titan has breached humanity's first line of defense, Wall Maria. Mikasa, the 104th Training Corps ace and Eren's best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans. Could this new monster be a blessing in disguise, or is the truth something much more sinister?", cover_image: "http://d.gr-assets.com/books/1348186232l/13531561.jpg")
Book.create(title: "Attack on titan 3", synopsis: "The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood. What strange new power has he awakened, and what will happen when the boy devoted to destroying the Titans becomes one himself?", cover_image: "http://d.gr-assets.com/books/1344370679l/13536803.jpg")

Authorship.create(book_id: 1, author_id: 5)
Authorship.create(book_id: 1, author_id: 6)
Authorship.create(book_id: 2, author_id: 5)
Authorship.create(book_id: 2, author_id: 6)
Authorship.create(book_id: 4, author_id: 8)
Authorship.create(book_id: 3, author_id: 7)
Authorship.create(book_id: 3, author_id: 4)
Authorship.create(book_id: 5, author_id: 9)
Authorship.create(book_id: 6, author_id: 8)
Authorship.create(book_id: 7, author_id: 8)


Review.create(title: "Crazy!", body: "There was so much going on that I loved it.", stars: 4, reviewer_id: 2, book_id: 4)
Review.create(title: "Good book", body: "There was so much going on that I loved it.", stars: 4, reviewer_id: 2, book_id: 1)

Tagging.create(name: "to-read", book_id: 7, user_id: 2)
Tagging.create(name: "read", book_id: 6, user_id: 2)
Tagging.create(name: "currently-reading", book_id: 5, user_id: 2)
Tagging.create(name: "to-read", book_id: 2, user_id: 1)
Tagging.create(name: "read", book_id: 1, user_id: 2)
Tagging.create(name: "read", book_id: 4, user_id: 2)
Tagging.create(name: "to-read", book_id: 1, user_id: 1)
Tagging.create(name: "read", book_id: 3, user_id: 1)
Tagging.create(name: "currently-reading", book_id: 7, user_id: 1)
Tagging.create(name: "to-read", book_id: 1, user_id: 3)
Tagging.create(name: "read", book_id: 3, user_id: 3)
Tagging.create(name: "currently-reading", book_id: 7, user_id: 3)



Comment.create(text: "Well what else do you have to say?", review_id: 2, commenter_id: 1)
Comment.create(text: "What do you mean?", review_id: 2, commenter_id: 2)