class Takeaway #:nodoc:"
  attr_reader :menu, :order

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new
  end

  def print_menu
    menu.print_nice
  end

  def select_dish(dish)
    add_dishes(dish)
  end

  private

  def add_dishes(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
    end
  end
end
