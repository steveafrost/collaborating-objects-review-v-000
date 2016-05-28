class Author
  
  attr_accessor :name
  
  def initialize
    @stories = [] # has_many interface
  end
  
  def stories # has_many interface
    @stories.dup.freeze
  end
  
  def add_story(story) # has_many interface
    raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
    @stories << story
    story.author = self unless story.author == self
  end
  
  def bibliography
    # go through all the story instances and grab each story's name
    
    self.stories.collect{|s| s.name} 
    
    # You need all stories to be instances of Story because they wouldn't respond to .name without it being an instance
  end
    
end