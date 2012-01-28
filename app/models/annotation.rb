class Annotation < ActiveRecord::Base
  has_one :overlay
  has_many :patterns
  attr_accessible :x, :y, :width, :height, :text, :title, :link, :path, :sub_domain, :selector
end
