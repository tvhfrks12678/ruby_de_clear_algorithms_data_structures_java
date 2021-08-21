MSG_SEARCH_FAILUE = 'その値の配列は存在しません'
MSG_SEARCH_SUCCESS = '%<search_num>dは%<order_num>d番目です'

# 線形探索
def search_seq(num_list, search_num)
	num_list.each_with_index do |num, idx|
		if(num == search_num)
			return format(MSG_SEARCH_SUCCESS, search_num: search_num, order_num: idx+1)
		end
	end
  MSG_SEARCH_FAILUE
end