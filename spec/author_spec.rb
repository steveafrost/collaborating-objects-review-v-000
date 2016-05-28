describe Author do
  let(:story){Story.new.tap{|s| s.name = "The Old Man and the Sea"}}
  let(:author){Author.new.tap{|a| a.name = "Ernest Hemingway"}}
  
  it 'has a name' do
    expect(author.name).to eq("Ernest Hemingway")
  end
  
  context 'has many stories' do
    describe '#stories' do
      it 'has an empty array of stories when initialized' do
        expect(author.stories).to match_array([])
      end
      
      it 'returns a frozen copy of the stories array' do
        expect(author.stories).to be_frozen
      end
    end
    
    describe '#add_story' do
      it 'can add a story instance' do
        author.add_story(story)
        
        expect(author.stories).to include(story)
      end
      
      it "reciprocates assigning this author as the story's author" do
        author.add_story(story)
        
        expect(story.author).to eq(author)
      end
      
      it 'only allows stories to be pushed onto it' do
        author.add_story(story)
        
        expect(story.author).to eq(author)
      end
    end
    
    describe '#bibliography' do
      it 'returns an array of all the story names of an author' do
        author = Author.new
        
        story_1 = Story.new.tap{|s| s.name = "Old Man and the Sea"}
        story_2 = Story.new.tap{|s| s.name = "The Sun Also Rises"}
        story_3 = Story.new.tap{|s| s.name = "For Whom the Bell Tolls"}
        
        author.add_story(story_1)
        author.add_story(story_2)
        author.add_story(story_3)
        
        expect(author.bibliography).to match_array(["Old Man and the Sea", "The Sun Also Rises", "For Whom the Bell Tolls"])
      end
    end
  end
end