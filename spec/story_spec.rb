describe Story do
  let(:story){Story.new.tap{|s| s.name = "The Old Man and the Sea"}}
  let(:author){Author.new.tap{|a| a.name = "Ernest Hemingway"}}
  
  it 'has a name' do
    expect(story.name).to eq("The Old Man and the Sea")
  end
  
  context 'with an author' do
    describe '#author=' do
      it 'can set an author' do
        story.author = author
        expect(story.author).to eq(author)
      end
      
      it 'throws an error if you assign anything besides an instance of Author' do
        expect{story.author = "Ernest Hemingway"}.to raise_error(AssociationTypeMismatchError)
      end
      
      it 'reciprocates the story into the authors stories collection' do
        story.author = author
        
        expect(author.stories).to include(story)
      end
    end
  end
end