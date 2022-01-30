
print "Creating cafes..."

Cafe.destroy_all

c1 = Cafe.create!(
name: 'Matinee',
city: 'Sydney',
suburb: 'Marrickville'
)

c2 = Cafe.create!(
name: 'Cafe twotwozerofour',
city: 'Sydney',
suburb: 'Marrickville'
)

c1 = Cafe.create!(
name: 'Seven 2 Four',
city: 'Sydney',
suburb: 'Marrickville'
)

puts "Created #{Cafe.count} cafes!"

print "Creating Roasters..."

Roaster.destroy_all

r1 = Roaster.create!(
name: 'Deluca Coffee',
city: 'Sydney',
suburb: 'Marrickville'
)

r2 = Roaster.create!(
name: 'Campos Coffee',
city: 'Sydney',
suburb: 'Banksmeadow'
)

r1 = Roaster.create!(
name: 'Di Lorenzo Coffee',
city: 'Sydney',
suburb: 'Marrickville'
)

puts "Created #{Roaster.count} Roasters!"

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

u1.cafes << c1 << c2
u2.cafes << c1

puts "#{u1.name} has been to #{u1.cafes.pluck(:name).join(', ')}"
puts "#{c1.name} has had these visitors: #{c1.users.pluck(:name).join(', ')}"