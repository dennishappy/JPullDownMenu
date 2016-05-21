Pod::Spec.new do |s|
   s.name         = "JPullDownMenu"
   s.version      = "0.2.0"
   s.summary      = "This is a library of the drop-down menu (OC)."
   s.homepage     = "https://github.com/jinxiansen/JPullDownMenu" 
   s.license      = 'MIT (LICENSE)'
   s.author       = { "jinxiansen" => "hi@jinxiansen.com" }
   s.source       = { :git => "https://github.com/jinxiansen/JPullDownMenu.git", :tag => s.version }
   s.platform     = :ios, '8.0'
   s.source_files = "JPullDownMenuDemo/JPullDownMenu/*.{h,m}"
   s.resources  = "JPullDownMenuDemo/JPullDownMenu/JPullDownMenu.bundle"
   s.requires_arc = true
 end