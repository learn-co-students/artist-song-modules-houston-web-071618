require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable::ClassMethod
  include Findable::InstanceMethod

  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  # def self.find_by_name(name)
  #   self.all.detect{|a| a.name == name}
  # end
  #
  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@all
  end
end
