require 'selectnumber'
require 'rspec/mocks/standalone'
require 'dishes'

describe SelectNumber do
  it 'prompts user to select number, returns dish with price' do
    menu = [[:chicken, 10], [:rice, 5], [:steak, 20]]
    dishes = Dishes.new(menu)
    select_number = SelectNumber.new(dishes)
    allow(select_number).to receive(:gets).and_return('1')

    expect { select_number.prompt_selection }.to \
      output("Please select an item.\nWhen you are done please key in EXIT\n1) chicken: £10\n").to_stdout
  end
end
