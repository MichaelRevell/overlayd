#require 'imgkit'

class Overlay < ActiveRecord::Base
  has_many :annotations
  #after_create :create_picture
  attr_accessible :title, :name, :root_domain, :views, :subdomain, :picture, :site_name
  
  def link
    return "http://" + root_domain + ".overlayd.org"
  end
  
  def picture 
    return "assets/"+@overlay.subdomain+".jpg"
  end
  def create_picture
    # kit = IMGKit.new(html, :quality => 50)
    kit = IMGKit.new("http://" + root_domain)
    f = File.new(Rails.root.join("app", "assets", "images", subdomain + ".jpg"), 'wb')
    img = kit.to_img(:jpg)
    f.write(img)
    f.close
    self.picture = "assets/"+subdomain+".jpg"
    self.save!
    return picture
  end
end
