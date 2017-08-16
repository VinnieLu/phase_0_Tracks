#def search_array(arr, num)
#  count = 0
#  answer = 0
#  while count < arr.length
#    if arr[count] === num
#      answer += count
#    end
#    count += 1
#  end
#  if answer == 0
#    puts "nil"
#  else
#    puts answer
#  end
#end
#
#array = [42, 89, 23, 1]
#puts search_array(array, 24)



#def fibonacci_sequence(num)
#  count = 0
#  array = []
#  while count < 2
#    array << count
#    count += 1
#  end
#  while count >= 2 && count < num
#    array << array[count-1] + array[count-2]
#    count += 1
#  end
#  array
#end
#
#p fibonacci_sequence(6)


#First step — create new array(final), where our final output will be stored. Next, insert our pivot value (first value from initial array) in the final. Then compare each item (i) in initial array (except pivot) with items in final. If i is less than current, insert it before the current item. If not — move to the next item in final. If all values in final are less than i — insert it in the end of an array. After all iterations method should return sorted array(final).

#def insertion_sort(array)
#    final = [array[0]]
#    array.delete_at(0)
#    # main code
#    for i in array
#        final_index = 0
#        while final_index < final.length
#            if i <= final[final_index]
#                final.insert(final_index,i)
#                break
#            elsif final_index == final.length-1
#                final.insert(final_index+1,i)
#                break
#            end
#            final_index+=1
#        end
#    end
#    # output
#    final
#end
#array = [1, 5, 3, 4, 6, 3]
#puts insertion_sort(array)#