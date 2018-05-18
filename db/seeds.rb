3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics created"

10.times do |x|
    Blog.create!(
        title: "My Blog Post #{x}",
        body: "Lorem ipsum dolor sit amet, consectetur 
        adipiscing elit, sed do eiusmod tempor incididunt 
        ut labore et dolore magna aliqua. Ut enim ad minim 
        veniam, quis nostrud exercitation ullamco laboris 
        nisi ut aliquip ex ea commodo consequat. 
        Duis aute irure dolor in reprehenderit in voluptate 
        velit esse cillum dolore eu fugiat nulla pariatur. 
        Excepteur sint occaecat cupidatat non proident, sunt in 
        culpa qui officia deserunt mollit anim id est laborum.",
        topic_id: Topic.last.id
    )
end
puts "10 blog posts created"

5.times do |x|
    Skill.create!(
        title: "Rails #{x}",
        percent_utilized: "15"
    )
end

puts "5 Skills created"

5.times do |x|
    Portfolio.create!(
        title: "Portfolio title #{x}",
        subtitle: "Ruby on Rails",
        body: "Excepteur sint occaecat cupidatat 
        non proident, sunt in culpa qui officia 
        deserunt mollit anim id est laborum.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/300x200"
    )
end

puts "9 portfolio items created"

1.times do |x|
    Portfolio.create!(
        title: "Portfolio title #{x}",
        subtitle: "Angular",
        body: "Excepteur sint occaecat cupidatat 
        non proident, sunt in culpa qui officia 
        deserunt mollit anim id est laborum.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/300x200"
    )
end

3.times do |tech|
    Portfolio.last.technologies.create!(
        name: "Technology #{tech}"
    )
    
end