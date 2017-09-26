def short_long_short(str1, str2)
  length_is = str1.length > str2.length
  length_is == true ? str2+str1+str2 : str1+str2+str1
end

# short_long_short("abc", "defgh")
# short_long_short("ijklmnop", "qrstu")
# short_long_short(" ", "abc")
# short_long_short("def", "")
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"