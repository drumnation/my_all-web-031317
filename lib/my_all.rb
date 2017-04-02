require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  # 3. Save the return value of the yield block
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
    # 1. iterate through each element in the passed in collection
    # 2. yield each element in the collection to the block
  end

  if block_return_values.include?(false)
    false
  else
    true
    # 4. Determine the return value of the method
  end

end

# my_all?([1,2,3]) {|i| i < 2}
# => block_return_values = [true, false, false]
