class Customer < ActiveRecord::Base
	
	before_validation :normalize_full_code, on: :create
  	belongs_to :country

  	validates_uniqueness_of :full_code
  	validates_presence_of :name, :code

protected
 
def normalize_full_code
	self.full_code = (self.code + '_' + self.country.iso_code_2).upcase
end

end
