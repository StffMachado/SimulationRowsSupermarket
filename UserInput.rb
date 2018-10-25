class UserInput


def initialize
  @@data = Array.new
end

def first_command

  puts 'Ingrese el sistema de filas a simular:' "\n" '1. Una fila' "\n" '2. Multiples filas'

  @system_rows = gets.chomp
  validate_command(@system_rows)

end

def count_cash_active(command)
  puts ' Ingrese el numero de cajas activas a simular'
  @cash_active = gets.chomp
  validate_command_two(@cash_active)

end

def time_simulation(command)
  puts ' Ingrese el tiempo de la simulacion en minutos'
  @time_simulation = gets.chomp
  validate_command_three(@time_simulation)

end

def time_simulation_delta(command)
  puts ' Ingrese el tiempo delta de cada iteracion en segundos'
  @time_simulation_delta = gets.chomp
  validate_command_four(@time_simulation_delta)

end

def validate_command(command)
  @system_rows_ok = command
  if @system_rows_ok.to_i == 1 || @system_rows_ok.to_i == 2
      @@data[0] = command.to_i
      count_cash_active(@@data)
   else
    puts 'Ingrese solamente opción 1 o 2'
    first_command

  end

end


def validate_command_two(commandtwo)
 @cash_active_ok = commandtwo
 expres = /\d/
 m = expres.match(@cash_active_ok)
  unless m
    puts 'Por favor digite un numero entero'
    count_cash_active(@cash_active_ok)
  else
    @@data[1] = commandtwo.to_i
    time_simulation(@cash_active_ok)
  end


end


def validate_command_three(commandthree)
 @time_simulation_ok = commandthree
 expres = /\d/
 m = expres.match(@time_simulation_ok)
  unless m
    puts 'Por favor digite numeros enteros'
    time_simulation(commandthree)
  else
    @@data[2] = commandthree.to_i
    time_simulation_delta(@time_simulation_ok)
  end


end

def validate_command_four(commandfour)
 @time_simulation_delta_ok = commandfour
 expres = /\d/
 m = expres.match(@time_simulation_ok)
  unless m
    puts 'Por favor digite numeros enteros'
    time_simulation_delta(commandfour)
  else
    @@data[3] = commandfour.to_i

  end


end


end
