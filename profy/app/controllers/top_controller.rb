class TopController < ApplicationController
	def index
		# 現在ログインしているユーザーのfeed_contentを複数取得する
		feed_contents = current_user.group.feed_contents.includes(:content)
		# feed_contentsからそれぞれcontentのみ取得する
		@feed_contents = feed_contents.map(&:content)
	end
end
