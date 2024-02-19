require 'faker'

puts "Creating interesting articles...be patient..."

10.times do |i|
  Article.create(
    title: Faker::Dessert.flavor,
    content: Faker::Lorem.paragraphs(number: 3).join("\n")
  )
end

puts "Created #{Article.count} articles."
