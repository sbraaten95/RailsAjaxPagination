class Lead < ApplicationRecord
	scope :registered_after, lambda {|start_date| where("registered_datetime >= ?", start_date )}
	scope :registered_before, lambda {|end_date| where("registered_datetime <= ?", end_date )}
end
