def bubble_sort(arr)
    n = arr.length 
    n.times do

        for i in 0..(n - 2)
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i] 
            end
        end   
    end
    
    return arr.inspect
end

puts bubble_sort([4,3,78,2,0,2])
    
