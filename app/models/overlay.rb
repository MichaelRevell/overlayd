class Overlay < ActiveRecord::Base
  has_many :annotations
  attr_accessible :title, :name, :root_domain, :views, :sub_domain
  
  def link
    return sub_domain + "/overlayd.org"
  end
end
