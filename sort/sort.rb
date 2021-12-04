def bubble(arr)
  count = arr.count
  count.times do |i|
    (count - i - 1).times do |j|
      arr[j] > arr[j + 1] && (arr[j], arr[j + 1] = arr[j + 1], arr[j])
    end
  end
  arr
end

def selection(arr)
  n = arr.length - 1
  n.times do |i|
    min_index = i
    for j in (i + 1)..n
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
  end
  arr
end
