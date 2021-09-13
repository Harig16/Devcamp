10.times.each do |blog|
<<<<<<< HEAD
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
=======
  Blog.create!(
    title: "Blog-#{blog}", 
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?")
end

puts "Blog created!"

7.times.each do |skill|
  Skill.create!(
    title: "Skill-#{skill}", 
    percentage_utilized: 50
  )
end

puts "Skill created!"

9.times.each do |portfolio|
  Portfolio.create!(
    title: "Portfolio-#{portfolio}",
    sub_title: "The standard Lorem Ipsum passage, used since the 1500s",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://via.placeholder.com/600X400",
    thumb_image: "https://via.placeholder.com/350X200"
  )
end

puts "Portfolio created!"
>>>>>>> resource-generator
