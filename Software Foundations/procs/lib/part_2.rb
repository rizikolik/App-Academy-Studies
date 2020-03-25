def reverser(word,&prc)
prc.call(word.reverse!)

end

def word_changer(str,&prc)
    split=[]
str.split(" ").each do |key|
    split<< prc.call(key)
end
split.join(" ")
end

def greater_proc_value(num,prc1,prc2)
if prc1.call(num) > prc2.call(num)
 prc1.call(num)
else
return prc2.call(num)
end
end

def and_selector(array,prc1,prc2)
array.select{|k| prc1.call(k)==true&&prc2.call(k)==true}

end

def alternating_mapper(array, prc_1, prc_2)
    mapp = []
  
    array.each_with_index do |el, idx|
      if idx.even?
        mapp << prc_1.call(el)
      else
        mapp << prc_2.call(el)
      end
    end
  
    mapp
  end