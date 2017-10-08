
class Menu #:nodoc:"
  attr_reader :menu
  def initialize(menu)
    @menu = menu
  end

  def print_nice
    menu.map do |dish, price|
      format('%s £%.2f', dish.to_s.capitalize, price)
    end.join(', ')
  end
end
