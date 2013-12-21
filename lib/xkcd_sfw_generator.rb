require "xkcd_sfw_generator/version"

module XkcdSfwGenerator

  def generate(word_count,seed=nil)
    randomizer = seed.nil? ? Random.new : Random.new(seed)
    Generator.new(randomizer).generate(word_count)
  end
  extend self

  class Generator
    attr_reader :randomizer, :dictionary

    def initialize(randomizer=Random.new)
      @randomizer = randomizer
      @dictionary = File.read(File.join(File.dirname(__FILE__), 'data', 'words.txt')).split
    end

    def generate(word_count)
      dictionary.sample(word_count, :random => randomizer).join('')
    end
  end
end
