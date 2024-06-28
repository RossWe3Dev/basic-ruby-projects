#stock_ex1 = [17,3,6,9,15,8,6,1,10]    # TOP example
stock_ex2 = [5,8,9,2,13,7,17,11,8,22,1]

def stock_picker(prices_arr)
  max_profit = 0
  best_buy_day = nil
  best_sell_day = nil

  prices_arr.each_with_index do |price,day|    # day = index of (current) price
    for i in 1...prices_arr.length             # starts iterating from 1 since prices_arr[0] == price 
      current_profit = prices_arr[i] - price

      if current_profit > max_profit && day < i
        max_profit = current_profit
        best_buy_day = day
        best_sell_day = i
      end
    end
  end

  puts "With these stock prices: #{prices_arr}"
  puts "The best day to buy is ##{best_buy_day} and the best day to sell is ##{best_sell_day} (starting from day 0)"
  puts "For a profit of $#{prices_arr[best_sell_day]} - $#{prices_arr[best_buy_day]} == $#{max_profit}"
  
  [best_buy_day, best_sell_day]
end

#stock_picker(stock_ex1)    # TOP example
stock_picker(stock_ex2)