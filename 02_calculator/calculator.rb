#write your code here
def add(a,b)
    return a + b
end

def subtract(a,b)
    return a - b
end

def sum(array)
    sum = 0
    if array == []
        return sum = 0
    else
        array.each do |index|
            sum += index
        end
        return sum.to_i
    end
end

def multiply(a,b)
    return a * b
end

def power (a,b)
    sum = a
    (b-1).times do 
         sum = sum * a
    end
    return sum
end