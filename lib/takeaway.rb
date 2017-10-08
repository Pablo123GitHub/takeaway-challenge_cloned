class Takeaway #:nodoc:"
  attr_reader :menu

  def initialize(menu:)
    @menu = menu
  end

  def print_menu
    menu.print_nice
  end
end
