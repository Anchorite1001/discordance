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
u3 = User.create :email => 'testing1@discordance.co', :password => 'chicken', :admin => false
puts "#{User.count} users"

Episode.destroy_all
e1 = Episode.create :title => "S1E1 | MeToo新视角：地市级晚报，媒体商业化与微博“中产”女权？", :image => 'ep1.JPG'
e2 = Episode.create :title => 'S1E2 | 把约会作为研究对象：亚裔在澳洲的情感生活',
:image => 'ep2.JPG'
puts "#{Episode.count} episodes"

Speaker.destroy_all
s1 = Speaker.create :name => 'Liangyu Sun', :host_or_guest => 'Host', :image => 'LiangyuSun.png'
s2 = Speaker.create :name => 'Yang Wu', :host_or_guest => 'Host', :image => 'YangWu.png'
s3 = Speaker.create :name => 'Shan Huang', :host_or_guest => 'Guest', :image => 'ShanHuang.png'
s4 = Speaker.create :name => 'Tingting Liu', :host_or_guest => 'Guest', :image => 'TingtingLiu.png'
s5 = Speaker.create :name => 'Xibei Wang', :host_or_guest => 'Guest', :image => 'XibeiWang.png'
puts "#{Speaker.count} speakers"

puts "users and episodes"
u1.episodes << e1
u1.episodes << e2
u2.episodes << e1
u2.episodes << e2

puts "episodes and speakers"
e1.speakers << s1 << s2 << s3
e2.speakers << s1 << s2 << s4 << s5
