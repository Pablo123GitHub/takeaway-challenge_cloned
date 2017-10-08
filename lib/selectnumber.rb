
class SelectNumber #:nodoc:"
  def initialize(dishes)
    @dishes = dishes
  end

  def prompt_selection
    # p @dishes
    puts "Please select an item.\nWhen you are done please key in EXIT"
    answer = gets.chomp.to_i
    output_dish(answer)
  end

  private

  def output_dish(user_input)
    x = @dishes.menu[user_input - 1]
    puts "#{user_input}) #{x.dish}: £#{x.price}"
  end
end
