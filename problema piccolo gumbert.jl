numeri = []
somma_totale = 0  # Usando un nome diverso per evitare conflitti

for numero in 1:100
    println(numero)
    global somma_totale += numero

end
  
println("Somma totale: ", somma_totale)
