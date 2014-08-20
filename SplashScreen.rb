#!/usr/local/rvm/rubies/ruby-2.1.2/bin/ruby
#!/usr/bin/ruby

require 'gtk3'
require_relative 'Logger'

class SplashScreen < Gtk::Window
  def initialize
    set_title "Center"
    
    signal_connect "destroy" do 
      Gtk.main_quit 
    end

    set_default_size 300, 200
    set_window_position Gtk::Window::Position::CENTER
    show
    
    
  end
  
  
  def SplashScreen.on
    #puts "Displaying"
    Logger.log("Displaying splash screen",Logger.DEBUG)
    
  end
  
  def SplashScreen.off
    #puts "Closing"
    Logger.log("Closing splash screen",Logger.DEBUG)
  end
end