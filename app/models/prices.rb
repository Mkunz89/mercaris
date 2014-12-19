class Prices < ActiveRecord::Base

scope :organic, -> { select("date(start_time) as starting_time, avg(price) as average_price").where(source: 'usda').group("date(start_time)").order("date(start_time) asc") }
scope :conventional, -> { select("date(start_time) as starting_time, avg(price) as average_price").where(source: 'cme').group("date(start_time)").order("date(start_time) asc") }

end
