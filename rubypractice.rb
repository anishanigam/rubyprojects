def check_num
  puts "Give me a number"
  number = gets.to_i
  if (1...10).include?(number)
    puts "valid"
  else
    puts "invalid"
  end
end




   def sum_these_numbers
     puts "give me a number"
     num1 = gets.to_i
     puts "give me another number"
     num2 = gets.to_i
     sum = num1 + num2
     puts sum.to_i
   end

   def is_even
     puts "give me a number"
     num3 = gets.to_i
     if num3%2 == 0
       puts "this number is even"
     else
       puts "this number is not even"
     end
   end




   A = ["home", "happy", "food", "smile", "jump"]
   A.each {|element| puts element.upcase}


   def checkme
     def checkmeagain
       return "what!"
     end
   end

   def valid_date
     puts "give me a month in a number"
     month = gets.to_i
     puts "give me a day in a number"
     day = gets.to_i
     puts "give me a year in a number"
     year = gets.to_i

     if (month==1 || month==3 || month==5 || month==7 || month == 10 || month== 12 || month==8 && (day<32 && day>0)) || (month == 4 || month==6 || month==9 || month==11 && (day>0 && day <31)) || (month==2 && (day>0 && day<29) || year%4==0 && month==2 && (day>0 && day <30))
       puts "this is a correct day"
     else
       puts "this is not correct"
     end
   end
