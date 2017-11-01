class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    if weather == 'rainy'
      prepare_for_rain
    elsif weather == 'cold'
      prepare_for_cold
    else
      prepare_for_sun
    end

    gym_day?(day_of_week)

    pack_a_lunch?(day_of_week)
  end

  def my_backpack
    output = []
    output << "Melinda, here's your packing list!\nDay: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}\n"

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

  def prepare_for_rain
    @items << 'pants'
    @items << 'shirt'
    @items << 'umbrella'
  end

  def prepare_for_cold
    @items << 'pants'
    @items << 'shirt'
    @items << 'jacket'
  end

  def prepare_for_sun
    @items << 'pants'
    @items << 'shirt'
  end

  def gym_day?(day)
    if day == 'monday' || day == 'thursday'
      @items << 'gym shoes'
    end
  end

  def pack_a_lunch?(day)
    if day != 'saturday' && day != 'sunday'
      @items << 'packed lunch'
    else
      @items << 'snacks'
    end
  end

end
