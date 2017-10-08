require 'menu'
require 'takeaway'

describe Menu do
  let(:menu) { described_class.new(menu_hash) }
  let(:menu_hash) do
    {
      chicken: 10,
      fish: 8
    }
  end

  it 'prints nicely the dishes on the menu' do
    expect(menu.print_nice).to eq 'Chicken £10.00, Fish £8.00'
  end
end
