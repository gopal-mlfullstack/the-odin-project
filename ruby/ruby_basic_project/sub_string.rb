
def sub_string(element, arr)
    freq = {}
    for value in arr 
        if freq.key?(value)
            freq[value] += 1
        else
            freq[value] = 1
        end 
    end
    return freq 
end 


array_ = ["gopal", "gopal", "ujjal", "ujjal", "ujjal", "Manaranjan", "Manaranjan", "Manaranjan", "Manaranjan"]
puts sub_string("gopal", array_)

