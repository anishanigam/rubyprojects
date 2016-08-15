  x=1
  100.times do
  if (x%3 == 0 && x%5 == 0)
      puts "fizz-buzz"
  elsif (x%3 == 0)
    puts "fizz"
  elsif (x%5 == 0)
    puts "buzz"
  else
    puts x
  end
    x=x+1
end
