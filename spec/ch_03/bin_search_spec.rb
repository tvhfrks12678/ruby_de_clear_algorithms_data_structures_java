require_relative '../../lib/ch_03/bin_search.rb'

describe '２分探索' do
	array = [15, 27, 39, 77, 92, 108, 121]

	context '[15, 27, 39, 77, 92, 108, 121]の場合' do
		context '39を探す場合' do
			it "'3番目です'をreturnする" do
				expect(search_binary(array, 39)).to  eq '3番目です'
			end
		end
		
		context '9を探す場合' do
			it "'その値の配列は存在しません'をreturnする" do
				expect(search_binary(array, 9)).to  eq 'その値の配列は存在しません'
			end
		end
	end

	array_second = [5, 7, 15, 28, 29, 31, 39, 58, 68, 70, 95]
	context '[5, 7, 15, 28, 29, 31, 39, 58, 68, 70, 95]の場合' do
		context '39を探す場合' do
			it "'7番目です'をreturnする" do
				expect(search_binary(array_second, 39)).to  eq '7番目です'
			end
		end
		
		context '6を探す場合' do
			it "'その値の配列は存在しません'をreturnする" do
				expect(search_binary(array_second, 9)).to  eq 'その値の配列は存在しません'
			end
		end
	end
end