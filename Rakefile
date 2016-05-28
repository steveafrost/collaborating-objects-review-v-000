require_relative './config/environment'

puts "Welcome to Authors, Stories, and Categories..."

def reload!
  loads '../lib/author.rb'
  loads '../lib/story.rb'
  loads '../lib/category.rb'
end

desc "A console"
task :console do
  Pry.start
end