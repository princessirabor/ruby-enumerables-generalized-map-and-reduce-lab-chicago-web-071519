# Your Code Here
def map(source_array)
  new =[]
  source_array.length.times do |index|
    new[index] = yield (source_array[index])
  end
  new
end

def reduce(source_array,start_val = 0 )
  i = 0;
  while i < source_array.length do 
    yield(source_array[i],start_val)
    i=i+-1
    
  end
end
#map(source_array) do |index|
#  index *(-1)
#end

#map([1, 2, 3, -9]){|n| n * n}