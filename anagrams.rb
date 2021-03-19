
#O(n^4)
def first_anagram?(str_1, str_2)
    prev = Time.now
    
    subs = []
    subs_2 = []
    
    (0...str_2.length).each do |i| #
        (i...str_2.length).each do |j|
            subs_2 << str_2[i..j]
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

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

#O(n^3)
def second_anagram?(str_1, str_2)
prev = Time.now
    str_1.each_char do |char| #O(n)
        if str_2.include?(char) #O(n)  ?? str_2.split.find_index(char) [l,i,v,e,s]
            i = str_2.index(char) #O(n)
            str_2[i] = '' #O(1)
        end
    end
    # p str_1
    p Time.now - prev
    p str_2.empty?
end

first_anagram?("elvis", "lives")    #=> true
second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str_1, str_2)
    prev = Time.now
    str_1.chars.sort == str_2.chars.sort
    p Time.now - prev
end

third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("elvis", "pancake")