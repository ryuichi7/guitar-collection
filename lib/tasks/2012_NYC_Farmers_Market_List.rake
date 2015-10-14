namespace :FarmersMarketList do
	desc "import a list of different NYC farmer's markets from CSV"
	task :list_all_NYC_farmers_markets => :environment do
		path = Rails.root.join('lib', 'tasks', '2012_NYC_Farmers_Market_List.csv')
		require 'csv'

		CSV.foreach(path) do |row|
			puts row.inspect
			market = FarmersMarket.new(borough: row[0],
									   market_name: row[1],
									   street_address: row[2],
									   days: row[3],
									   hours: row[4]
									   )
			puts market.borough
			puts market.market_name
			puts market.street_address
			puts market.days
			puts market.hours
			market.save
		end

	end
end
