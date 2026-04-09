# db/seeds.rb
# This file contains the code to generate sample data in the database.
# IN other words, it's sort of like running sql commands but for ruby on rails

Product.destroy_all

# sofas

sofa1 = Product.create!(
 name: "Beige Sofa",
 description: "A comfortable 2-seat beige sofa for your living room",
 price: 599.99,
 color: "Beige",
 category: "sofa",
 stock: 10
)

sofa1.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Beige-2cushion-sofa.png")),
  filename: "Beige-2cushion-sofa.png"
)

sofa2 = Product.create!(
  name: "Old Fashioned Sofa",
  description: "A vintage-inspired sofa with a classic design, perfect for adding a touch of elegance to your living room.",
  price: 799.99,
  color: "Brown",
  category: "sofa",
  stock: 5
)

sofa2.image.attach(
  io: File.open(Rails.root.join("app/assets/images/brown-oldfashioned-2cushion-sofa.png")),
  filename: "brown-oldfashioned-2cushion-sofa.png"
)

sofa3 = Product.create!(
name: "Green Sofa",
 description: "A comfortable 3-seat green sofa for your living room",
 price: 599.99,
 color: "Green",
 category: "sofa",
 stock: 9
)

sofa3.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Green-3cushion-sofa.png")),
  filename: "Green-3cushion-sofa.png"
)

sofa4 = Product.create!(
name: "Blue Framed Sofa",
 description: "A comfortable 3-seat blue sofa with a wooden frame for your living room",
 price: 550.00,
 color: "Blue",
 category: "sofa",
 stock: 9
)

sofa4.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Blue-WoodAcc-Sofa.png")),
  filename: "Blue-WoodAcc-Sofa.png"
)

sofa5 = Product.create!(
name: "White Corner Couch",
 description: "A large corner couch suitable for the whole family to enjoy",
 price: 550.00,
 color: "White",
 category: "sofa",
 stock: 7
)

sofa5.image.attach(
  io: File.open(Rails.root.join("app/assets/images/White-Corner-Couch.png")),
  filename: "White-Corner-Couch.png"
)

sofa6 = Product.create!(
name: "Classic Oldfashioned Sofa",
 description: "A 2 cushion sofa with an old fashioned design that adds a touch of vintage to your space",
 price: 300.00,
 color: "Green",
 category: "sofa",
 stock: 7
)

sofa6.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Green-Oldfashion-Sofa.png")),
  filename: "Green-Oldfashion-Sofa.png"
)


# tables
dining1 = Product.create!(
 name: "Starter Dining Table",
 description: "A 6-person dining table with a sleek black and brown finish",
 price: 400.00,
 color: "Black",
 category: "table",
 stock: 4
)

dining1.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Black-Brown-Dining.png")),
  filename: "Black-Brown-Dining.png"
)

dining2 = Product.create!(
 name: "Rustic Dining Table",
 description: "A beautiful rustic dining wooden dining table complete with stools",
 price: 350.00,
 color: "Brown",
 category: "table",
 stock: 6
)

dining2.image.attach(
  io: File.open(Rails.root.join("app/assets/images/brown-wood-dining.png")),
  filename: "brown-wood-dining.png"
)

dining3 = Product.create!(
 name: "Light Wood Dining Table",
 description: "A classic light wood dining table with modern design, perfect for any dining room setting",
 price: 550.00,
 color: "Brown",
 category: "table",
 stock: 3
)

dining3.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Light-Wood-Dining.png")),
  filename: "Light-Wood-Dining.png"
)

dining4 = Product.create!(
 name: "Minibar and Stools",
 description: "A smaller but popular minibar style dining table equipped with stools, perfect for a breakfast nook",
 price: 230.00,
 color: "Brown",
 category: "table",
 stock: 2
)

dining4.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Simple-Bar.png")),
  filename: "Simple-Bar.png"
)

# chairs

chair1 = Product.create!(
 name: "Simple Recliner",
 description: "A simple but nice grey recliner for your living room",
 price: 150.00,
 color: "Grey",
 category: "chair",
 stock: 7
)

chair1.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Grey-basic-recliner.png")),
  filename: "Grey-basic-recliner.png"
)

chair2 = Product.create!(
 name: "Comfortable Chair",
 description: "A cozy white chair suitable for any room in your home",
 price: 99.00,
 color: "White",
 category: "chair",
 stock: 4
)

chair2.image.attach(
  io: File.open(Rails.root.join("app/assets/images/White-1person-chair.png")),
  filename: "White-1person-chair.png"
)

chair3 = Product.create!(
 name: "Remote Controlled Recliner",
 description: "A comfortable grey recliner with a remote control for easy adjustments",
 price: 260.00,
 color: "Grey",
 category: "chair",
 stock: 5
)

chair3.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Grey-Remote-Recliner.png")),
  filename: "Grey-Remote-Recliner.png"
)



# beds

bed1 = Product.create!(
 name: "Padded Bedset",
 description: "An elegant queensize bedset with a padded headboard matching most bedroom decors",
 price: 230.00,
 color: "Grey",
 category: "bed",
 stock: 5
)

bed1.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Grey-basic-bed.png")),
  filename: "Grey-basic-bed.png"
)

bed2 = Product.create!(
 name: "Shelved Bedset",
 description: "An beautiful and functional queensize bedset with a usable shelves implemented into the frame",
 price: 325.00,
 color: "Grey",
 category: "bed",
 stock: 3
)

bed2.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Grey-Shelved-Bedframe.png")),
  filename: "Grey-Shelved-Bedframe.png"
)

bed3 = Product.create!(
 name: "Wooden Shelved Bedset",
 description: "A functional and stylish queensize bedset with a wooden frame and shelves implemented into the design",
 price: 400.00,
 color: "Brown",
 category: "bed",
 stock: 5
)

bed3.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Wooden-Shelved-Bed.png")),
  filename: "Wooden-Shelved-Bed.png"
)

bed4 = Product.create!(
 name: "Simple Wooden Bedset",
 description: "a simple yet clean wooden bedset with a natural finish",
 price: 325.00,
 color: "Brown",
 category: "bed",
 stock: 6
)

bed4.image.attach(
  io: File.open(Rails.root.join("app/assets/images/Basic-Wooden-Bed.png")),
  filename: "Basic-Wooden-Bed.png"
)
