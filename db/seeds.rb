# rails generate model product name:string description:string alteration_information:string size:integer color_one:string color_two:string brand:string length:string condition:string original_price:integer selling_price:integer seller:string image:string

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "BHLDN Tulle Dress", description: "Worn once, great condition", alteration_information: "Shortened", size: "4", color_one: "light pink", color_two: "none", brand: "BHLDN", length: "Long", condition: "Excellent", original_price: "450", selling_price: "150", seller: "Sellergirl123", image: "https://s7d1.scene7.com/is/image/BHLDN/45731098_065_a?$zoom-xl$")
product = Product.create(name: "Grey Long Bridemaid Dress", description: "Perfect Condition", alteration_information: "Taken in at the waist and straps, also shortened", size: "6", color_one: "Grey", color_two: "White", brand: "Jenny Yoo", length: "Long", condition: "Excellent", original_price: "170", selling_price: "50", seller: "sellsclothes89", image: "https://s7d1.scene7.com/is/image/BHLDN/48571632_007_a?$zoom-xl$")
product = Product.create(name: "Velvet Emerald Dress", description: "Wore this one time in as a wedding guest, so many compliments!!", alteration_information: "None", size: "4", color_one: "Emerald", color_two: "Green", brand: "David's Bridal", length: "Long", condition: "Excellent", original_price: "300", selling_price: "190", seller:"randomseller4875", image: "https://s7d1.scene7.com/is/image/BHLDN/48154165_032_a?$zoom-xl$")





