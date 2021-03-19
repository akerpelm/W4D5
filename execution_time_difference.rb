 
# worse O(n^2)
def my_worse_min(arr)
    smallest_num = arr.first #O(1)

    arr.each_with_index do |ele_1, i_1| #O(n)
        arr.each_with_index do |ele_2, i_2| #O(n)
            # ele_1 >= ele_2 ? smallest_num = ele_2 : ele_1
            if ele_1 < smallest_num
                smallest_num = ele_1
            elsif ele_2 < smallest_num
                smallest_num = ele_2
            else   
                smallest_num = smallest_num
            end
        end
    end

    smallest_num
end

#  better O(n)
 def my_min(arr)
     smallest_num = arr.first 

     arr.each do |ele| #O(n)
         smallest_num = ele if ele < smallest_num
     end

     smallest_num
 end
 
 
 
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

puts

p my_worse_min(list)



#worse O(n^3())
def largest_contiguous_subsum(list) 
    subs = [] #O(1)
    list.each_with_index do |ele_1, i_1| #O(n)
        list.each_with_index do |ele_2, i_2| #O(n)
            subs << list[i_1..i_2].sum if i_2 > i_1 #O(n)
        end
    end
    subs.max #O(1)
end

#better = O(n)
def better_largest_contiguous_subsum(list)
    largest = 0
    current = list[0]
    i = 1
    while i < list.length #O(n)
        current = 0 if current < 0 
        current += list[i]
        largest = current if current > largest
        i+=1
    end
    largest
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8


list = [2, 3, -6, 7, -6, 7]
p better_largest_contiguous_subsum(list)