arr = [34, -345, -1, 100]

    smallestInterger = arr[0]
  
    arr.each do |n|
      if smallestInterger < n
      else
        smallestInterger=n
      end
    end
return smallestInterger