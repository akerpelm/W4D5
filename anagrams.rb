
#O(n^3)
def first_anagram?(str_1, str_2)
    prev = Time.now
    
    subs = []
    subs_2 = []
    
    (0...str_2.length).each do |i| #O(n)
        (i...str_2.length).each do |j| #O(n)
            subs_2 << str_2[i..j] #O(n)
        end
    end
    
    (0...str_1.length).each do |i|
        (i...str_1.length).each do |j|
            subs << str_1[i..j]
        end
    end
    
    p str_1 == subs.select {|ele| subs_2.include?(ele)}.join('')
    p Time.now - prev
end



#O(n^2)
def second_anagram?(str_1, str_2)
prev = Time.now
    str_1.each_char do |char| #O(n) 
        i = str_2.index(char) if str_2.include?(char) #O(3n)  
             #O(n)
            str_2[i] = '' #O(1)
        end
    end
    # p str_1
    p Time.now - prev
    p str_2.empty?
end

#O(n log n)
def third_anagram?(str_1, str_2)
    prev = Time.now
    str_1.chars.sort == str_2.chars.sort #sort uses quicksort which is n log n
    p Time.now - prev
end



#o(n)
def fourth_anagram(str_1, str_2)
    hash_1 = Hash.new(0) #O(1)
    hash_2 = Hash.new(0) #O(1)

    str_1.each_char {|char| hash_1[char] += 1} #O(n)
    str_2.each_char {|char| hash_2[char] += 1} #O(n)

    hash_2.all? {|k,v| hash_1.has_key?(k)}  
end

# o(n) because 2n cancels out
def fourth_anagram(str_1, str_2)
    hash_1 = Hash.new(0) #O(1)

    str_1.each_char {|char| hash_1[char] += 1} #O(n)
    str_2.each_char {|char| hash_1[char] -= 1} #O(n)

    hash_1.values.all?{|val| val == 0} 
end

# p fourth_anagram("gizmo", "sally")    #=> false
p fourth_anagram("elvis", "lives")    #=> true