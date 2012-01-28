class Pattern < ActiveRecord::Base
  has_one :annotation
  attr_accessible :title, :description, :link
end
