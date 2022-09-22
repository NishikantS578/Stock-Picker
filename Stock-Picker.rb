
def stock_picker(array)
  buying_day = 0
  selling_day = 1
  profit = 0
  array[0...array.size].each_with_index do |value,index|
    array[index + 1..].each_with_index do |value1,index1|
      if value1 - value > profit
        buying_day = index
        puts buying_day
        selling_day = index + index1 + 1
        puts selling_day
        profit = value1 - value
        puts profit
      end
    end
  end
  puts "[#{buying_day},#{selling_day}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])