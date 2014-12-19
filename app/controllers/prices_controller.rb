class PricesController < ApplicationController
	def index
		@organicprices = Prices.organic
		@conventionalprices = Prices.conventional
end

end
