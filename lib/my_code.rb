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
  value = start_val
  while i < source_array.length do 
    if source_array[i] == nil
      source_array[i] = !!source_array[i]
    end
    value = yield(source_array[i],value)
    i=i+1
  end
 # if value == nil
 #  value = false
 # end
  value
end
#reduce(source_array) do |index, n|
#  index && n
#end

#map([1, 2, 3, -9]){|n| n * n}