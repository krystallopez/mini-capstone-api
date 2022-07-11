Supplier.create({ name: "Bioware", email: "distribution@test.com", phone_number: "(800)555-4576"})

Supplier.create({name: "Guerilla", email: "shipping@test.com", phone_number: "(855)402-5698"})

Supplier.create({name: "Respawn Entertainment", email: "shipping@test.com", phone_number: "(800)347-4466"})

Supplier.create({name: "Sony Interactive Entertainment", email: "sonyproducts@test.com", phone_number:"(855)768-9587"})

Supplier.create({name: "Bungie", email: "bungiesales@test.com", phone_number: "(800)255-7648"})

Supplier.create({name: "Feral Interactive", email: "feralintsales@test.com", phone_number: "(855)369-7324"})


Product.create({name: "Destiny 2", price: 59.99, supplier_id: 5 , description: "Destiny 2 is a shared world, first person shooter game. The game also combines of RPG genre into one phenomenal experience. Create your guardian and join the epic battle between the darkness and the light!" })

Product.create({name: "Mass Effect: Legendary Edition", price: 59.99, supplier_id:  1 , description: "The Mass Effect Legendary Edition includes single-player based content and over 40 DLC from the entire Mass Effect Trilogy. This include promo weapons, armors, packs, and it has been remastered for 4K Ultra HD." })

Product.create({name: "Horizon Zero Dawn", price: 59.99, supplier_id: 2 , description: "Horizon Zero Dawn, follows Aloy, a young huntress in a world that has been overrun by machines. Play as Aloy as she sets out to uncover her past." })

Product.create({name: "Star Wars: Jedi Fallen Order", price: 19.99, supplier_id: 3, description: "Star Wars: Jedi Fallen Order is action-packed adventure game. Set after the events of Episode III: Revenge of the Sith, you play as former Jedi padawan Cal Kestis. Develop your force abilities, hone your lightsaber techniques, and explore ancient mysteries of a long-losy civilization - all while trying to stay one step in front of Darth Vader and his deadly inquisitors."})

Image.create({product_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuq27_sLA8NqL2yT5Oux3MZ0Fwm-9CTwJ80w&usqp=CAU"})
Image.create({product_id: 2,  url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSAWBTV4W7Hm1kCwlS5fnRKPBpdTAOqsg9Uw&usqp=CAU"})
Image.create({product_id: 3,  url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpc_km5UU9oqrEM2YI5_wz59p3XErACWz_6haWMsAqqkXqVI0frt5Ryfdy6z0AbK2msuI&usqp=CAU"})
Image.create({product_id: 4, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmebWqvp51fffPxja2ZXN4IsgYkwOmxYsuGg&usqp=CAU"})
Image.create({product_id: 1, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-HqV4FCk_cDWuXEY2uwSATISc9Slv2sGZkQ&usqp=CAU"})
Image.create({product_id: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRJiisUAfg-azgaMzHdwCM0EPVmw5OPQoZ-Q&usqp=CAU"})



puts "Done."


