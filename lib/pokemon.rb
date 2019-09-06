require 'pry'

class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(name:, type:, id: nil, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?);
    SQL

    db.execute(sql, name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    binding.pry
  end
end
