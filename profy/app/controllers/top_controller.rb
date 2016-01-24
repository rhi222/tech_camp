class TopController < ApplicationController
	def index
		@question = Question.new
		# 現在ログインしているユーザーのfeed_contentを複数取得する
		@feed_contents = current_user.group.feed_contents.includes(:content).page(params[:page]).per(5)
		# feed_contentsからそれぞれcontentのみ取得する
		@feed_contents_resource = @feed_contents.map(&:content)
	end
end
