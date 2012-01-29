task :over => :environment  do
  Overlay.find(:all).each do |o|
    kit = IMGKit.new("http://" + o.root_domain)
    f = File.new(Rails.root.join("app", "assets", "images", o.subdomain + ".jpg"), 'wb')
    img = kit.to_img(:jpg)
    f.write(img)
    f.close
    o.picture = "assets/"+o.subdomain+".jpg"
    o.save!
    puts o.picture
  end
end