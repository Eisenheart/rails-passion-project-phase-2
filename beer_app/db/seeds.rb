# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#you might have to use password_hash
User.create(name: "John", email: "Joe",password: "123456",hometown: "Fairfield",country: "United States")
Beer.create(name: "Tegernseer", link: "www.braustuberl.de",occasion: "weekend at the lake",
  appearance: "5",aroma: "3",palate: "5",flavour: "5",
  final_score: "18", user_id: 1)
Beer.create(name: "Maxlrainer", link: "www.maxlrain.de",occasion: "weekend at the lake",
  appearance: "5",aroma: "3",palate: "5",flavour: "5",
  final_score: "18", user_id: 1)
Beer.create(name: "San Miguel", link: "www.sanmiguel.com.ph",occasion: "weekend at the lake",
  appearance: "3",aroma: "2",palate: "4",flavour: "45",
  final_score: "15", user_id: 1)
