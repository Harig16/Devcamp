3.times.each do |topic|
  Topic.create!(
    title: "Topic-#{topic}"
  )
end

puts "3 Topic created!"

10.times.each do |blog|
  Blog.create!(
    title: "Blog-#{blog}", 
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    topic_id: Topic.last.id
  )
end

puts "10 Blog created!"

7.times.each do |skill|
  Skill.create!(
    title: "Skill-#{skill}", 
    percentage_utilized: 50
  )
end

puts "7 Skill created!"

8.times.each do |portfolio|
  Portfolio.create!(
    title: "Portfolio-#{portfolio}",
    sub_title: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://via.placeholder.com/600X400",
    thumb_image: "https://via.placeholder.com/350X200",
    position: portfolio + 1
  )
end

1.times.each do |portfolio|
  Portfolio.create!(
    title: "Portfolio-#{portfolio}",
    sub_title: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://via.placeholder.com/600X400",
    thumb_image: "https://via.placeholder.com/350X200", 
    position: 9
  )
end

puts "9 Portfolio created!"

3.times.each do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology-#{technology}"
  )
end

puts "3 technology create!"