class Pokemon

  attr_accessor :name, :type, :id, :db

  def initialize(name:, type:, id: nil, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
end
