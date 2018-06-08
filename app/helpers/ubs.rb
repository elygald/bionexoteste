class Ubs
  attr_reader :id, :name, :adderess, :city, :phone

  def initialize(id, name, adderess, city, phone)
    @id = id
    @name = name
    @adderess = adderess
    @city = city
    @phone = phone
  end

  def create_ubs
      ubs = Ubse.find_by(id: @id)
      if ubs == nil
        ubs = Ubse.new
      end
      ubs.id = @id
      ubs.name = @name
      ubs.adderess = @adderess
      ubs.city = @city
      ubs.phone = @phone
      ubs.save
  end
end
