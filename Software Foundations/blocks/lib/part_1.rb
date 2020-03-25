def select_even_nums(array)
    array.select(&:even?)
end

def reject_puppies(array)
    array.reject{|ele| ele["age"]<=2}
end

def count_positive_subarrays(array)
    array.count{|sub| sub.sum>0}

end
  def aba_translate(word)
newword=""
word.split("").each.with_index do |key,i|
if "aeiou".include?(key)
    newword+= key + "b" + key
else 
    newword+=key
end
end
newword
  end


  def aba_array(array) 
  array.map{|ele| aba_translate(ele)}

end 