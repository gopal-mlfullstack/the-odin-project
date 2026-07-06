
# > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(stocks)
    max_profit = 0

    best_days = [0, 0]
    min_index = 0
    

 
    stocks.each_with_index do | price, current_index |
        if price < stocks[min_index]
            min_index = current_index
        else 
            profit = price - stocks[min_index]
            
            
            if profit > max_profit
                max_profit = profit 
                best_days = [min_index, current_index]
            end 
        end 
    end 
    return best_days.inspect

end

puts stock_picker([17,3,6,9,15,8,6,1,10])
    

