require 'takeaway'

describe Takeaway do
  let(:takeaway) { described_class.new(menu: menu) }
  let(:menu) { double(:menu, print_nice: printed_menu) }
  let(:printed_menu) { 'Chicken £10' }

  it 'prints a menu with a list of dishes and price' do
    allow(menu).to receive(:print_nice) { 'Chicken £10' }
    expect(takeaway.print_menu).to eq 'Chicken £10'
  end
end
