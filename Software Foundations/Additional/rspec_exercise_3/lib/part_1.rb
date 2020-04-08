def is_prime?(num) 
	return false if num<2
	(2...num).each do |k|
		 if num%k==0 
			 return  false
		 end
	end
	true
end

def nth_prime(n)
	counter=0
	numb=1
	while counter <n 
		numb+=1
		counter+=1 if is_prime?(numb)
	end
	numb
end

def prime_range(min,max)
(min..max).select{|k| is_prime?(k)}

end