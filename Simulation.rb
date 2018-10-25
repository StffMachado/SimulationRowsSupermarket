require './UserInput.rb'
require './CashBox.rb'

class Simulation

  def start

  usr = UserInput.new()
  usr.first_command

  end

  def generate_cash(data)

    cash = CashBox.new()
    cash.validate_cash(data)

  end


end
