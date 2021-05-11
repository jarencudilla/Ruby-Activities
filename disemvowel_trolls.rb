# def disemvowel(str)
#     string = str.split("")
#     vowel =~ /[aeiou]/
#     string.select { |vowel| !vowel.match(vowel) }.join("")
# end

# def disemvowel(str)
#     str.gsub(/[AEIOUaeiou]/, "")
# end

def disemvowel(str)
    str.gsub(/[aeiou]/i, "")
end