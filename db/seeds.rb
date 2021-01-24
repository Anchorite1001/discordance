# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :email => 'yangwu@discordance.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'liangyu@discordance.co', :password => 'chicken', :admin => true
puts "#{User.count} users"

Episode.destroy_all
e1 = Episode.create :title => 'S1E1'
e2 = Episode.create :title => 'S1E2'
puts "#{Episode.count} episodes"

Speaker.destroy_all
s1 = Speaker.create :name => 'Liangyu Sun', :host_or_guest => 'host'
s2 = Speaker.create :name => 'Yang Wu', :host_or_guest => 'host'
s3 = Speaker.create :name => 'Shan Huang', :host_or_guest => 'guest'
s4 = Speaker.create :name => 'Tingting Liu', :host_or_guest => 'guest'
s5 = Speaker.create :name => 'Xibei Wang', :host_or_guest => 'guest'
puts "#{Speaker.count} speakers"

puts "users and episodes"
u1.episodes << e1
u1.episodes << e2
u2.episodes << e1
u2.episodes << e2

puts "episodes and speakers"
e1.speakers << s1 << s2 << s3
e2.speakers << s1 << s2 << s4 << s5
