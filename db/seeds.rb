
print "Creating Roasters..."

Roaster.destroy_all

r1 = Roaster.create!(
name: 'Deluca Coffee',
address: '5-7 Denby St, Marrickville NSW 2204',
)

r2 = Roaster.create!(
name: 'Campos Coffee',
address: '16 Baker St, Banksmeadow NSW 2019',
)

r3 = Roaster.create!(
name: 'Di Lorenzo Coffee',
address: '33-35 Marrickville Rd, Marrickville NSW 2204',
)

puts "Created #{Roaster.count} Roasters!"

print "Creating cafes..."

Cafe.destroy_all

c1 = Cafe.create!(
name: 'Matinee',
address: '23-29 Addison Rd, Marrickville NSW 2204',
roaster_id: r3.id
)

c2 = Cafe.create!(
name: 'Cafe twotwozerofour',
address: '106 Addison Rd, Marrickville NSW 2204',
roaster_id: r1.id
)

c3 = Cafe.create!(
name: 'Seven 2 Three Specialty Coffee',
address: '128 Addison Rd, Marrickville NSW 2204',
roaster_id: r1.id
)

puts "Created #{Cafe.count} cafes!"
# puts "#{c1.name} uses coffee beans from #{c1.roaster.name}"
# puts "#{r1.name} supplies beans to #{r1.cafes.pluck(:name).join(', ')}"

print "Creating users..."

User.destroy_all

u1 = User.create!(
email: 's.furnari@hotmail.com',
password: 'chicken',
name: 'Steve',
city: 'Sydney',
suburb: 'Marrickville',
photo_url: 'https://www.psypost.org/wp-content/uploads/2018/04/man-drinking-coffee.jpg'
)

u2 = User.create!(
email: 'natalie@gmail.com',
password: 'chicken',
name: 'Natalie',
city: 'Sydney',
suburb: 'Marrickville',
photo_url: 'https://media.istockphoto.com/photos/young-asian-woman-holding-a-cup-of-coffee-with-saucer-picture-id1264104305?k=20&m=1264104305&s=170667a&w=0&h=NEx4eePlWas6N7xpMGEUCrNI-yCwlzErHfn3JhxmzYM='
)

u3 = User.create!(
email: 'harley@gmail.com',
password: 'chicken',
name: 'Harley',
city: 'Sydney',
suburb: 'Stanmore',
photo_url: 'https://www.hopkinsmedicine.org/-/media/images/health/3_-wellness/heart-health/guy-drinking-coffee.ashx'
)

puts "Created #{User.count} users!"

print "Creating cafe ratings..."

CafeRating.destroy_all

cr1 = CafeRating.create!(
    user_id: u1.id,
    cafe_id: c1.id,
    rating: 2,
    review: "food was shit"
)

cr2 = CafeRating.create!(
    user_id: u1.id,
    cafe_id: c2.id,
    rating: 4,
    review: "it was pretty good"
)

cr3 = CafeRating.create!(
    user_id: u1.id,
    cafe_id: c3.id,
    rating: 5,
    review: "best coffee in sydney"
)

puts "Created #{CafeRating.count} cafe reviews"

# puts "User #{u1.name} has #{u1.cafe_ratings.count} cafe reviews"
# puts "Cafe #{c2.name} got a review from #{c2.cafe_ratings}"

print "Creating roaster ratings..."

RoasterRating.destroy_all

cr1 = RoasterRating.create!(
    user_id: u1.id,
    roaster_id: r1.id,
    rating: 2,
    review: "shit beans"
)

cr2 = RoasterRating.create!(
    user_id: u1.id,
    roaster_id: r2.id,
    rating: 4,
    review: "good, but slightly bitter"
)

cr3 = RoasterRating.create!(
    user_id: u1.id,
    roaster_id: r3.id,
    rating: 5,
    review: "best coffee in sydney"
)

puts "Created #{RoasterRating.count} roaster reviews"