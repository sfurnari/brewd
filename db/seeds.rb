print "Creating users..."

User.destroy_all

u1 = User.create!(
    email: 's.furnari@hotmail.com',
    password_digest: 'chicken',
    name: 'Steve',
    location: 'Sydney',
    photo_url: 'https://www.psypost.org/wp-content/uploads/2018/04/man-drinking-coffee.jpg'
)

u2 = User.create!(
    email: 'natalie@gmail.com',
    password_digest: 'chicken',
    name: 'Natalie',
    location: 'Sydney',
    photo_url: 'https://media.istockphoto.com/photos/young-asian-woman-holding-a-cup-of-coffee-with-saucer-picture-id1264104305?k=20&m=1264104305&s=170667a&w=0&h=NEx4eePlWas6N7xpMGEUCrNI-yCwlzErHfn3JhxmzYM='
)

u3 = User.create!(
    email: 'harley@gmail.com',
    password_digest: 'chicken',
    name: 'Harley',
    location: 'Sydney',
    photo_url: 'https://www.hopkinsmedicine.org/-/media/images/health/3_-wellness/heart-health/guy-drinking-coffee.ashx'
)

puts "Created #{User.count} users!"

print "Creating cafes..."

CafeShop.destroy_all

c1 = CafeShop.create!(
    name: 'Matinee',
    location: 'Marrickville'
)

c2 = CafeShop.create!(
    name: 'Cafe 2204',
    location: 'Marrickville'
)

c1 = CafeShop.create!(
    name: 'Seven 2 Four',
    location: 'Marrickville'
)

puts "Created #{CafeShop.count} cafes!"