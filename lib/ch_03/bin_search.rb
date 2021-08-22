MSG_SEARCH_FAILUE = 'その値の配列は存在しません'
MSG_SEARCH_SUCCESS = '%<search_num>d番目です'
INDEX_SEARCH_FAILUE = -1

# ２分探索
def search_binary(num_list, search_num)
	index = get_index(num_list, search_num)
	get_message(index)	
end

def get_index(num_list, search_num)
	point_left = 0;
	point_right = num_list.length - 1
	
	loop do
		point_center = ((point_left + point_right) / 2).floor
		if(num_list[point_center] == search_num) 
			return point_center + 1
		end

		break if point_left >= point_right

		if(num_list[point_center] < search_num)
			point_left = point_center + 1
		elsif
			point_right = point_center - 1
		end
	end

	return INDEX_SEARCH_FAILUE
end

def get_message(index)
	if(index == INDEX_SEARCH_FAILUE)
		return MSG_SEARCH_FAILUE
	end
	format(MSG_SEARCH_SUCCESS, search_num: index)
end