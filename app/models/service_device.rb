class ServiceDevice < ActiveRecord::Base
  belongs_to :device
  belongs_to :user
end