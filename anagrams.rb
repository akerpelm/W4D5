
def first_anagram?(str_1, str_2)
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

    str_1 == subs.select {|ele| subs_2.include?(ele)}.join('')
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true


