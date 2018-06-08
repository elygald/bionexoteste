class Geocedes
  attr_reader :lat, :long, :ubses_id

  def initialize(lat, long, ubses_id)
    @lat = lat
    @long = long
    @ubses_id = ubses_id
  end

  def create_geocede
      geocede = Geocede.find_by(ubses_id: @ubses_id)
      if geocede == nil
        geocede = Geocede.new
      end
      geocede.ubses_id = @ubses_id
      geocede.lat = @lat
      geocede.long = @long
      geocede.save
  end
end
