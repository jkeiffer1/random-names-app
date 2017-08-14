 def random_pair(names)
 	array = names.shuffle.each_slice(2).to_a
 	if names.length % 2 == 0
 		p array
 	else
 		array[array.length - 2] << array[array.length - 1]
 		array[array.length - 2].flatten!
 		array.slice!(array.length - 1)
 	p array
 	end
end

 def stringer(string)
 	heresstring = ""
 	string.each do |lilarray|
 		if lilarray.length == 3
 			x = "#{lilarray[0]} and #{lilarray[1]} and #{lilarray[2]}" + "<br>"
 		else
 			x = "#{lilarray[0]} and #{lilarray[1]}" + "<br>"
 		end
 		heresstring << x
 	end
 	heresstring
 end

#  def random_pair_no_slice(name_arr)
#  	if name_arr.length <= 3
#  		p "Insufficient Names"
#  	else
#  		name_arr.shuffle!
#  		arr_1 = []
#  		arr_2 = []

# 	 	counter = 1

# 	 	name_arr.each do |x|
# 	 		if counter % 2 == 0
# 	 			arr_1 << x
# 	 		else
# 	 			arr_2 << x
# 	 		end

# 	 	counter += 1
	 	
# 	 	end
# 	 	#p "#{arr_1} arr_1 is here"
# 	 	#p "#{arr_2} arr_2 is here"
# 	 	big_arr = arr_1.zip(arr_2)
# 	 	#p "#{big_arr} big arr here"

# 	 	if name_arr.length % 2 == 0
# 	 	else
# 	 		big_arr.last << name_arr.last
# 	 	end

# 	 	p "#{big_arr} here i am"
# 	 	big_arr.length
# 	 end
# end

 












# a = [["marvin","tim"]["matt","mike"]]
# a.count
# #returns 2
# a[1][0]

# #returns matt
# a[0]
# ["marvin","time"]

# a[1]
# ["matt","mike"]

# a[1]