require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with valid attributes" do
    expect(Article.new).to be_valid
  end


  it "is valid with a title and body" do 
    expect(Article.new(title: 'greeting', body: 'hello there')).to be_valid
  end

  it "is invalid without a title" do
    expect(Article.new(body: 'hello there')).to_not be_valid
  end

  it "is invalid without a body" do
    expect(Article.new(title: 'greeting')).to_not be_valid
  end
end
