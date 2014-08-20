#!/usr/local/rvm/rubies/ruby-2.1.2/bin/ruby
#!/usr/bin/ruby

require 'gtk3'
require_relative 'SplashScreen'
require_relative 'Logger'
#require 'SplashScreen'

class Carlix
  
  # TODO : Load command line options
  def parse_cmd
    Logger.log("Parsing command line arguments",Logger.DEBUG)
  end
  
  # TODO : Load configuration file
  def load_config
    Logger.log("Loading configuration file",Logger.DEBUG)
  end
  
  def initialize
    puts "Welcome to Carlix!"
    
    Gtk.init 
    splash = SplashScreen.new
    splash.on
    sleep(10)
    parse_cmd
    load_config
    splash.off
    
    Gtk.main
  end

end

init = Carlix.new
