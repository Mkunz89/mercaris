namespace :data  do 
	filepath = File.expand_path('db/price-graph.csv')
	desc "import files from local CSV"
	task :import => :environment do
		ActiveRecord::Base.connection.execute "COPY prices(contract, start_time, end_time, source, price) FROM  '#{filepath}' HEADER DELIMITER ',' CSV;"
	end
end