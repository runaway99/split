module ApplicationHelper
	def split_bill(price, person_count)
  		array = []
 		person_count.times { array << price/person_count }
 		(price%person_count).times { |i| array[i] += 1 }
 		array
	end
end
