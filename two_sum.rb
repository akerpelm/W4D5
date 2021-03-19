# def two_sum?(arr, target_sum)
#     # your code here...
# end

# brute force
# O(n^2)
def bad_two_sum?(arr, target_sum)
    
    (0...arr.length).each do |i|    #O(n)
        (i+1...arr.length).each do |j|  #O(n)
            return true if (arr[i] + arr[j]) == target_sum
        end
    end

    return false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

# sorting
# 
def okay_two_sum?(arr, target_sum)
    

    mid = arr.length / 2
    case (arr[mid] + arr[mid - 1]) <=> target_sum
    when 1
        okay_two_sum?(arr.take(mid - 1))
    when 
        
    else
        
    end
end

arr = [0, 1, 5, 7, 9]
            
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false