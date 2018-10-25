class CashBox

def initialize
  @cashbox
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

end

metodo = CashBox.new
metodo.count_cash(3)
