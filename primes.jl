# Funzione per verificare se un numero è primo
function is_prime(n::Int)
    if n <= 1
        return false
    elseif n <= 3
        return true
    elseif n % 2 == 0 || n % 3 == 0
        return false
    end
    i = 5
    while i * i <= n
        if n % i == 0 || n % (i + 2) == 0
            return false
        end
        i += 6
    end
    return true
end

# Funzione per generare una lista di numeri primi fino a un certo limite
function primes_up_to(limit::Int)
    primes = Int[]
    for num in 2:limit
        if is_prime(num)
            push!(primes, num)
        end
    end
    return primes
end

# Funzione principale
function main()
    println("Inserisci il limite superiore per la generazione di numeri primi:")
    limit = parse(Int, readline())
    primes_list = primes_up_to(limit)
    
    println("Numeri primi fino a $limit:")
    println(primes_list)
end

# Esegui il programma principale
main()
