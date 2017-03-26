class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    @trains << train
  end

  def list_by_type(type)
    @trains.select{|train| train.type == type}
  end

  def departure(train_number)
    @trains.delete_if {|train| train.number == train_number }
  end
end
