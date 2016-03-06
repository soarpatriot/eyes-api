class Collect < ActiveRecord::Base
  has_one :waybill
  belongs_to :user
end
