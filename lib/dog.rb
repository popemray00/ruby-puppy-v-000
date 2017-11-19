class Dog

    @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.clear_all
    @@all.each do | dog |
      dog.clear_all
    end
  end

  def self.all
    @@all.each do | dog |
      puts dog.name
    end
  end
end
