def factorial(n)
    total = 1
    n.downto(1) do |i|
        total *= i
    end
end

a = factorial(25)
puts a

# 15511210043330985984000000
