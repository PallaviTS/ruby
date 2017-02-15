require 'benchmark'
t = Integer(gets)
def count_one(n)
    count = 0
    while n > 0 
        n = (n & (n-1))
        count = count + 1
        return if count > 2
    end
    count == 2 
end

while t > 0 
    n = Integer(gets)
    set_bits = 0 
    while n > 0 
	puts Benchmark.measure {        set_bits = set_bits + n if count_one(n) }
        n = n - 1
    end 
    puts set_bits
    t = t - 1  
end
