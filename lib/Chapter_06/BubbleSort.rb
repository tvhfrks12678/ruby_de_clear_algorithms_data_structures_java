require "csv"

module Chapter_06
	class BubbleSort
		class << self
			def excute(array)
				sort_array = array.clone
				array_max_num = sort_array.length.to_i - 1

				(0..array_max_num).each do |i|
					number_of_exchanges = 0
					array_max_num.downto(i + 1) do |num|
						number_to_compare = num - 1
						if sort_array[number_to_compare] > sort_array[num]
							sort_array[number_to_compare], sort_array[num] =
							sort_array[num], sort_array[number_to_compare]
							number_of_exchanges += 1
						end
					end
					break if number_of_exchanges == 0
				end
				sort_array
			end

			def import_csv
				dir_pwd = Dir.pwd 
				file_path = "#{dir_pwd}/lib/Chapter_06/Array.csv"
				data_list = CSV.read(file_path)
				array = data_list[0].map { |n| n.to_i}
				Chapter_06::BubbleSort.excute(array)
			end
		end
	end
end

p Chapter_06::BubbleSort.import_csv