# Your Code Here
def map(source_array)
  new =[]
  source_array.length.times do |index|
    new[index] = yield (source_array[index])
  end
  new
end

def reduce(source_array,start_val = 0 )
  
  source_array.length -1).times do |index|
     value = yield (source_array[])
  end
end
#map(source_array) do |index|
#  index *(-1)
#end

#map([1, 2, 3, -9]){|n| n * n}