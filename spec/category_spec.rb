describe Category do
  it 'has a name' do
    # Setup
    category = Category.new
    category.name = "Fiction"
    
    # Expectation
    expect(category.name).to eq("Fiction")
  end
end