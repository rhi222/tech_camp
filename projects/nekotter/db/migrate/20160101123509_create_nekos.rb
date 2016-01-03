class CreateNekos < ActiveRecord::Migration
	def change
		create_table :nekos do |t|
		t.text			:text
		t.timestamps
		end
	end
end
