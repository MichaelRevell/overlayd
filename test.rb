require 'imgkit'

kit = IMGKit.new("http://google.com")
f = File.new("kat.jpg", 'wb')
img = kit.to_img(:jpg)
f.write(img)
f.close