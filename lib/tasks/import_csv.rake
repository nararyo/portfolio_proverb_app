require 'csv'

namespace :import_csv do
	desc "csvデータをインポートするタスク"
	
	task proverbs: :environment do 
		path = File.join Rails.root, "db/csv_data/proverbs.csv"
		list = []

		CSV.foreach(path, headers: true) do |row|
			list << {
				who_said: row["who_said"],
				feel: row["feel"], 
				expression: row["expression"]
			}
		end
		puts "インポート処理を開始"

		begin
			Proverb.create!(list)
			puts "インポート完了"
		rescue ActiveModel::UnknownAttributeError => invalid
			puts "インポートに失敗しました：UnknownAttributeError"
		end
	end
end
