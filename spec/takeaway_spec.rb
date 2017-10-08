require 'takeaway'

describe Takeaway do
  let(:order) { instance_double('Order', total: 15.50) }
  let(:takeaway) { described_class.new(menu: menu, order: order) }
  let(:menu) { double(:menu, print_nice: printed_menu) }

  let(:printed_menu) { 'Chicken £10' }

  let(:dishes) do
    { chicken: 2,
      fish: 1 }
  end

  it 'prints a menu with a list of dishes and price' do
    allow(menu).to receive(:print_nice) { 'Chicken £10' }
    expect(takeaway.print_menu).to eq 'Chicken £10'
  end

  it 'gives the possibility to select some number several dishes' do
    expect(order).to receive(:add).twice
    takeaway.select_dish(dishes)
  end
end
