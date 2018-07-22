require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_accessor :name
  attr_accessor :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end
end
