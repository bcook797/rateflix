require 'spec_helper'

describe Movie do
  pending "add some examples to (or delete) #{__FILE__}"
  describe '#valid?' do
    it 'movie name cannot be nil' do
      movie = Movie.new
      movie.valid?.should be_false
    end

    it 'movie name cannot be empty string' do
      movie = Movie.new(name: '')
      movie.valid?.should be_false
    end

    it 'movie name cannot be blank' do
      movie = Movie.new(name: ' ')
      movie.valid?.should be_false
    end
  end
end
