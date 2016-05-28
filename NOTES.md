authors
  has_many stories
  has_many categories through stories

stories
  belongs to an author
  belongs to a category

categories
  has_many stories
  has_many authors through it's stories
  
  
what we want to be able to do
  hemingway= Author.new
  hemingway.stories #=> [#<Story>, #<Story>]
  
  
*Notes
  ..*An interface is a things you can do to an object. The messages and the methods it responds to are it's interface.
  
  ..*Part of TDD is we only want to write enough code to make the first test pass.
  
  ..*While making tests the term 'context' and 'describe' are the same. It only matter which one is more readable to you.
  
  ..*Most of what we do in Ruby we experience by calling methods on an object, which is an interface.
  
  ..*We don't care about how it works, we just care about the behavior. The details don't matter.
  
  ..*Think about narrative. An author is born, a story is born, the story is added to the author, then we expect the author to include that story.
  
  ..*The only thing you can do is call methods on objects. All the time, no matter what.
  
  ..*1 + 1 is really 1.+(1)
  
  ..*Very straightforward explanation of collaborating objects at 24:30 in video. 
  ....*h.stories.first.name goes to the stories array in the "h" instance of author and grabs the first item in the array then grabs the name attribute of that first item.
  
  ..*@stories.collect{|s| s.name} is the same as @stories.collect(%:name)
  ....*The latter is called Symbol to Proc. Most readers don't like it because it is too magical.
  
  ..*34:30 What is a frozen object? When an object is frozen, they cannot be modified. All objects can be frozen.
  
  ..*Constrain your programs by restricting what can be done with the interfaces
  
  
  
*Questions
  ..*Why do some files have .rb and some leave it off

  ..*What exactly does .tap do?
  
  ..*What exactly is let(:story) doing. I understand the outcome but not how it gets there
  
  ..*32:00m Brad's question in the video is great. Why don't we require add_story to check that it has a .name. The reason is because if it is an object, which we check for, it will have a name attribute.

  
*Good to Revisit
  ..*Frozen Arrays @ 34:30
  ..*Chain of Events @ 52:30
  