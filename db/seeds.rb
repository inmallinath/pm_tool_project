# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# PROJECT
100.times do
  Project.create     title: Faker::Hipster.sentence,
                     description: Faker::Hipster.paragraph,
                     due_date: Faker::Time.forward(45, :morning)
end

# TASK
100.times do
  Task.create       title: Faker::Hipster.sentence(1, true),
                    due_date: Faker::Time.forward(16, :morning)
end

# DISCUSSION
100.times do
  Discussion.create       title: Faker::Lorem.sentence(1, true),
                    description: Faker::Lorem.paragraph
end

# COMMENT
100.times do
  Comment.create      body: Faker::Lorem.paragraphs
end
