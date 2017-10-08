require 'dishes'
require 'stringio'

describe Dishes do
  menu = [[:chicken, 10], [:rice, 5], [:steak, 20]]
  subject { Dishes.new(menu) }

  it 'expects to output a menu with a list of items and price' do
    expect { subject.show_menu_with_price }.to \
      output("1) chicken: £10\n2) rice: £5\n3) steak: £20\n").to_stdout
  end
end
