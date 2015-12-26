class Review
	@@review_count = 0
	def self.get_review_count
		return @@review_count
	end

	def initialize
		puts "Reviewクラスのインスタンスが生成されました"
		@title = ""
		@genre = ""
		@impression = ""
		@@review_count = @@review_count + 1
	end

	def write_review(title, genre, impression)
		@title = title
		@genre = genre
		@impression = impression
		puts @title
		puts @genre
		puts @impression
	end

	def show_review
		line "---------------------------"
		puts "ジャンル : #{@genre}\n#{line}\n"
		puts "タイトル : #{@title}\n#{line}\n"
		puts "感想 : #{@impression}\n#{line}\n"
	 end
end

puts Review.get_review_count

review = Review.new #make a insatance
review.show_review #instance.method

puts Review.get_review_count #class.method
