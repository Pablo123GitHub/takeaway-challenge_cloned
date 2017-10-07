class Dishes #:nodoc:"
  def initialize(menu)
    @menu = list_struct(menu)
  end

  def show_menu_with_price
    @menu.each do |x|
      puts "#{x.dish}: £#{x.price}"
    end
  end

DishesMenu = Struct.new(:dish, :price)
 def list_struct(dishes_price)
   dishes_price.map do |item|
     DishesMenu.new(item[0], item[1])
   end
 end
end
