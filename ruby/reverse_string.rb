def reverse_string(str)
  # type your code in here
  
  # check if srt is String and continue if str is String
  return "it is not a string!" unless str.is_a?(String) 

  # return same as input if string is empty or contains only 1 character
  return str unless str.length > 1

  #split string by "" and put it into input array named "arr"
  arr = str.split("")
  
  # declare output variable
  output_arr = []
  
  # length of array times we shift array and see last element
  arr.length.times do |i|
    
    # put into output array last element of input array
    output_arr.push( arr.rotate(arr.length - i).last )
    # p arr.rotate(i-1).last 
  end

  # make a word from array 
  # and return result
  return output_arr.join("")
end

# test case
if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')
  # Don't forget to add your own!
  puts "Expecting: '12345h  f324'"
  puts "=>", reverse_string('423f  h54321')

  puts "Expecting: #{('1dhqifgr7823hgfiewqhfjdilsahfjdsalyfueor2hijflehwqajkfldhsaklj').reverse()}"
  puts "=>", reverse_string('1dhqifgr7823hgfiewqhfjdilsahfjdsalyfueor2hijflehwqajkfldhsaklj')

  
end

# Please add your pseudocode to this file
# And a written explanation of your solution

  # for solving problem 
  # 1) i need to split string on single characters,
  # put all characters step by step into some dat structure for this and then
  # remove them step by step, the most suficient structure for it is stack,
  # i just need 2 cycles for it 1srt 
  # and implement stack class via node class or via array class
  # advantage of this method will be simplicity of process.
  # 1.5) i could use standard array mathod push() and pop() 
  # 2)  but what if ruby has internal method that's allow to rotate array?
  # so I could solve the problem in 1 iteration only
  # I'm not allowed to use any internal method's of reversing but it's not say that 
  # i'm not allowed to use other internal method. I check if this method exist
  # ok method rotate(n) allow me to shift array for n times so I can use cycle with 
  # word.length - n variable so it and just read last or first item from array
  # 
  # i decided use path number 2 because never use rotate() method and I want test it
  # pseudo code 
  # split input string onto characters 
  # put result in array
  # declare an output array
  # make loop with length times of array 
  #   rotate array with (length - curent times) 
  #   read the last element of array and put as the last element of output array
  # make string from outputted array 
  # return result string
