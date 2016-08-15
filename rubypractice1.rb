def valid_date
  puts "give me a month in a number"
  month == gets.to_i
  puts "give me a day in a number"
  day == gets.to_i
  puts "give me a year in a number"
  year == gets.to_i
  if month==1,5,7,10,12 && day>0 && day<32 || month == 4,6,9,11 && day>0 && day <31 || month==2 && day>0 && day <29 && || year%4==0 && month==2 && day>0 && day <30
    puts "this is a correct day"
  else
    puts "this is not correct"
  end
end
