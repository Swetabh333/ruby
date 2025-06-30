def bubble_sort(arr)
  len = arr.length - 1
  len.downto(0) do |i|
    for j in 0...i do
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
      end
    end
  end
  arr
end

arr = [4,3,78,2,0,2]
puts bubble_sort(arr)


