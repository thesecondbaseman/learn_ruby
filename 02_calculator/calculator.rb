#write your code here

def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum numbers
    sum = 0
    numbers.each do |number|
        sum = sum + number
    end
    sum
end

def multiply num1, num2
    num1 * num2
end

def multiply_multiples list
    product = 1
    list.each do |number|
        product = product * number
    end
    product
end

def power number, exponent
    number ** exponent
end


def factorial number
    if number == 0
        return 1
    end
    factorial = 1
    integer = 1
    # 2
    while integer <= number
        factorial = factorial * integer
        integer = integer + 1
    end

    factorial
end