def primes(i)

  primes = (0..i).to_a
  primes[0] = primes[1] = nil


  counter = 0
  primes.each do |int|
    next unless int
    break if int > i
    counter += 1

    (int*int).step(i,int) { |m| primes[m] = nil }
  end


  puts "Solved for #{i} in #{counter} steps."
  primes.compact
end

def prime?(i)
  primes(i).include?(i)
end
