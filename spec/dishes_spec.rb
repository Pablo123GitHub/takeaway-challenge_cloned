require 'dishes'
describe Dishes do
  menu = [['chicken', 10]]
  subject { Dishes.new(menu) }

  it 'expects to output a menu with a list of items and price' do
    expect { subject.show_menu_with_price }.to \
     output("chicken: £10\n").to_stdout
  end
end
