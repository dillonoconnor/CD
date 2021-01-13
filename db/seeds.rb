# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing = Struct.new(:trad, :simpl, :pin, :eng1, :eng2)

File.foreach("cedict_ts.u8") do |line|
  match = Listing.new(*line.scan(/(\S+)\s(\S+)\s\[(.*)\]\s\/([^\/]*)\/?(.*)?\//)[0])
  Word.create(
    traditional: match.trad,
    simplified: match.simpl,
    pinyin: match.pin,
    english1: match.eng1,
    english2: match.eng2
  )
end
