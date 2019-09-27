require 'pry'
require_relative "./owner"
require_relative "./dog"
class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
    @owner.pets[:cats] << self
  end

  def self.all
    @@all
  end

end
