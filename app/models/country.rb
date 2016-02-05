class Country < ActiveRecord::Base
	validates :iso_code_2, length: { is: 2, too_long: "2 characters are mandatory" }
    validates :iso_code_3, length: { is: 3, too_long: "3 characters are mandatory" }
    validates_uniqueness_of :iso_code_2, :iso_code_3
    validates :name, uniqueness: { case_sensitive: false }
end
