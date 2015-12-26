# def method
posts = []
def drawPrefix(posts)
	# outputs menu
	menu = {
		reviewNum: "#{posts.length}",
		choice: "[0] write review\n[1] read review\n[2] close app"
	}
	puts "review Num : #{menu[:reviewNum]}"
	puts "#{menu[:choice]}"
end

def postReview(posts)
	# set variable
	post = {}
	puts "write genre"
	post[:genre] = gets.chomp
	puts "write title"
	post[:title]= gets.chomp
	puts "write review"
	post[:review] = gets.chomp
	line = "---------------------------"

	# outputs review
	puts "ジャンル : #{post[:genre]}\n#{line}"
	puts "タイトル : #{post[:title]}"
	puts "感想 :\n#{post[:review]}\n#{line}"

	# add a post to posts
	posts << post
	return posts
end

def readReviews(posts)
	number = 0
	posts.each do |post|
		puts "[#{number}]: #{post[:title]}のレビュー"
		number = number + 1
	end
	puts "見たいレビューの番号を入力してください"
	reviewNum = gets.to_i
	post = posts[reviewNum]
	line = "---------------------------"
	puts "ジャンル : #{post[:genre]}\n#{line}"
	puts "タイトル : #{post[:title]}"
	puts "感想 :\n#{post[:review]}\n#{line}"
end

def endProgram
	# write something
	puts "Thank you for using!\nNow leaving..."
	exit
end

def exeption
	puts "invalid input.\nplease input again"
end


####### main #########
while true do
	drawPrefix(posts)
	# decide what you do
	doing = gets.to_i
	if doing == 0 then
		postReview(posts)
	elsif doing == 1 then
		readReviews(posts)
	elsif doing == 2 then
		endProgram
	else
		exeption
	end
end
