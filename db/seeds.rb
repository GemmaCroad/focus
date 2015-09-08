User.destroy_all

u1 = User.create :name => 'Sarah', :email => 'sarah@gmail.com'
u2 = User.create :name => 'Mike', :email => 'mike@gmail.com'
u3 = User.create :name => 'Jesse', :email => 'jesse@gmail.com'

Photo.destroy_all

p1 = Photo.create :name => 'Beach', :image => 'http://placekitten.com/200/100'
p2 = Photo.create :name => 'Cat Fun', :image => 'http://placekitten.com/400/400'
p3 = Photo.create :name => 'Meow?', :image => 'http://placekitten.com/50/50'
p4 = Photo.create :name => 'Purrrr', :image => 'http://placekitten.com/100/100'

Gallery.destroy_all

g1 = Gallery.create :name => 'Landscape'
g2 = Gallery.create :name => 'Animals'
g3 = Gallery.create :name => 'Cats'
g4 = Gallery.create :name => 'Random'


u1.photos << p1
u2.photos << p4
u3.photos << p2 << p3

g1.photos << p1
g3.photos << p1 << p2 << p3 << p4




