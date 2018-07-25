require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable::ClassMethod
  include Findable::InstanceMethod

  attr_accessor :name
  attr_reader :songs

  @@all = []

  # def self.find_by_name(name)
  #   self.all.detect{|a| a.name == name}
  # end
  #
  def initialize
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
