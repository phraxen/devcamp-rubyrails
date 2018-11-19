3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end
puts 'created 3 topics'

10.times do |blog|
  Blog.create!(
    title: "Blog post no. #{blog}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pulvinar ligula velit, id pretium nisi efficitur eu. In a bibendum urna, quis accumsan sapien. Nunc aliquam blandit dui ac dictum. Maecenas erat nisl, placerat ac ornare vitae, egestas id enim. Praesent convallis nibh sollicitudin, egestas enim sit amet, pellentesque urna. Quisque non enim scelerisque, lacinia libero commodo, faucibus ipsum. In id laoreet odio. Quisque tincidunt magna et enim fermentum, eget aliquet nulla aliquam. Morbi ut nunc ut tortor laoreet consequat feugiat vitae diam. Ut a sollicitudin magna. Pellentesque posuere nulla non euismod scelerisque. Nunc est sapien, laoreet in tellus sit amet, malesuada elementum erat. Sed vestibulum bibendum feugiat.',
    topic_id: Topic.last.id
  )
end
puts 'created 10 blog posts'

5.times do |skill|
  Skill.create!(
    title: "Skill no. #{skill}",
    percent_utilized: 0.2
  )
end
puts 'created 5 skills'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio no. #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pulvinar ligula velit, id pretium nisi efficitur eu. In a bibendum urna, quis accumsan sapien. Nunc aliquam blandit dui ac dictum. Maecenas erat nisl, placerat ac ornare vitae, egestas id enim. Praesent convallis nibh sollicitudin, egestas enim sit amet, pellentesque urna. Quisque non enim scelerisque, lacinia libero commodo, faucibus ipsum. In id laoreet odio. Quisque tincidunt magna et enim fermentum, eget aliquet nulla aliquam. Morbi ut nunc ut tortor laoreet consequat feugiat vitae diam. Ut a sollicitudin magna. Pellentesque posuere nulla non euismod scelerisque. Nunc est sapien, laoreet in tellus sit amet, malesuada elementum erat. Sed vestibulum bibendum feugiat.',
    main_image: 'http://placehold.it/600x400',
    thumb_image: 'http://placehold.it/350x200'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio no. #{portfolio_item}",
    subtitle: 'Angular',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pulvinar ligula velit, id pretium nisi efficitur eu. In a bibendum urna, quis accumsan sapien. Nunc aliquam blandit dui ac dictum. Maecenas erat nisl, placerat ac ornare vitae, egestas id enim. Praesent convallis nibh sollicitudin, egestas enim sit amet, pellentesque urna. Quisque non enim scelerisque, lacinia libero commodo, faucibus ipsum. In id laoreet odio. Quisque tincidunt magna et enim fermentum, eget aliquet nulla aliquam. Morbi ut nunc ut tortor laoreet consequat feugiat vitae diam. Ut a sollicitudin magna. Pellentesque posuere nulla non euismod scelerisque. Nunc est sapien, laoreet in tellus sit amet, malesuada elementum erat. Sed vestibulum bibendum feugiat.',
    main_image: 'http://placehold.it/600x400',
    thumb_image: 'http://placehold.it/350x200'
  )
end

puts 'created 9 portfolio items'