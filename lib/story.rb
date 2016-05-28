class Story
  
  attr_accessor :name
  attr_reader :author
  
  
  def author=(author) # The song instance belongs to an author
    raise AssociationTypeMismatchError, "#{author.class} received, Author expected." if !author.is_a?(Author)
    @author = author
    author.add_story(self) unless author.stories.include?(self)
  end
  
end