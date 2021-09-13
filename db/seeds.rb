10.times.each do |blog|
  Blog.create!(title: "Blog-#{blog}", body: "testing the blogs")
end

puts "10 blogs created!"

6.times.each do |skill|
  Skill.create!(title: "skill-#{skill}", percentage_utilized: 30)
end

puts "6 Skills created!"

9.times.each do |portfolio|
  Porfolio.create!(title: "Porfolio-#{portfolio}",
  sub_title: "sample text",
body: "testing the portfolio",
main_image: "https://via.placeholder.com/350X150",
thumb_image: "https://via.placeholder.com/200X150")
end

puts "9 portfolio created!"