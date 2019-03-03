#p34 部分和問題
#f

@n = gets.to_i
@a = gets.split(' ').map(&:to_i)
k = gets.to_i

def dfs(num, pattern)
	# 終了条件に操作を記述すると、深さ探索終了後にまとめて処理を実施する
	# 探索時にデータを貯める -> 後でまとめて処理 という流れをとれる
	if num == @n
		sum = 0
		p pattern
		pattern.length.times do |i|
			sum += @a[i]*pattern[i]
		end
		p sum
		return
	end

	dfs(num+1, pattern << 1)
	pattern.pop
	dfs(num+1, pattern << 0)
	pattern.pop
	
end

dfs(0,[])



