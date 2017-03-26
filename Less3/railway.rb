class Route
  attr_reader :stations

  def initialize(from, to)
    @stations = [from, to]
  end

  def add(station)
    @stations.insert(-2, station)
  end

  def delete(station)
    @stations.delete(station) if station != @stations.first && station != @stations.last
  end
end

