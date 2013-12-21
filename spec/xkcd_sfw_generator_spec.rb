require "spec_helper"

describe XkcdSfwGenerator do
  context "Having a phrase generated from the helper" do
    before(:each) do
      @phrase = XkcdSfwGenerator.generate(3)
    end

    it "should have generated something" do
      @phrase.length.should be > 0
    end

    it "should not have any spaces" do
      @phrase.split(' ').length.should eq(1)
    end
  end

  it "should handle 0 as a word length" do 
    @phrase = XkcdSfwGenerator.generate(0)

    @phrase.length.should eq(0)
  end

  context "Having a generator" do
    before(:each) do 
      @generator = XkcdSfwGenerator::Generator.new
      @phrase = @generator.generate(3)
    end

    it "should not have any spaces" do
      @phrase.split(' ').length.should eq(1)
    end
  end

  it "should allow the seed in the helper version" do
    phrase1 = XkcdSfwGenerator.generate(3,3)
    phrase2 = XkcdSfwGenerator.generate(3,3)
    
    phrase1.should eq(phrase2)
  end
end
