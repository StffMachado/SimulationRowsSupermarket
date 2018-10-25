require "benchmark"
class CashBox

def initialize
  @cashbox
  @data
  @time
end

def validate_cash(data)

 if data[0] == 1
   onerow(data)
 else
   multiplerows(data)
 end
end

def count_cash(obj)
    i = 1

    cantidad = obj.to_i

    cantidad.times do
    for i in cantidad
      caja.random
    end
    i=i+1
    end

 puts caja_i.to_s

end

def onerow(data)


  @time = Benchmark.realtime do
    (1..180000).each { |i| i }
  end

   @data = data
    case
    when @time*10000 == 180000
   puts 'si'
   numcash=data[1].to_i
      for i in 1..numcash
        print "\t|C|"
        puts "Time elapsed #{time*10000} milliseconds"
      end
    when @time*10000 < 180000
      puts "Time elapsed #{@time*10000} milliseconds"
      @time = @time + 1
      validate_cash(data)

    end


end

def multiplerows(data)
  puts 'multiple fila'
end

end
