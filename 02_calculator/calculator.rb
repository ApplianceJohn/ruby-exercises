def add num_1, num_2
    return (num_1 + num_2)
end

def subtract num_1, num_2
    return (num_1 - num_2)
end

def sum array
    return array.inject(0, :+)
end

def mult array
    return array.inject(:*)
end

def pow num_1, num_2
    return (num_1 ** num_2)
end