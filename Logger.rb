#!/usr/local/rvm/rubies/ruby-2.1.2/bin/ruby
#!/usr/bin/ruby

module Logger
  
  ERROR   = 0
  WARN    = 1
  INFO    = 2
  VERBOSE = 3
  DEBUG   = 4
  
  
  def Logger.ERROR
    ERROR
  end
  
  def Logger.WARN
    WARN
  end
  
  def Logger.INFO
    INFO
  end
  
  def Logger.VERBOSE
    VERBOSE
  end
  
  def Logger.DEBUG
    DEBUG
  end

  LOG_LEVEL = Array["ERROR : ", "WARNING : ", "", "",""]
  
  # Logging level used for a log, if none supplied
  DEFAULT_LOGGING_LEVEL = DEBUG
  #puts "LOGGING LEVEL : #{DEFAULT_LOGGING_LEVEL}"
  
  # Level that below which gets printed to log file
  LOG_FILE_LEVEL = 2
  
  # Level that below which gets printed to screen
  CONSOLE_LEVEL = 4
  
  def Logger.log(toPrint,level=DEFAULT_LOGGING_LEVEL)
    #puts "PRINTING : \"#{toPrint}\" AT LEVEL : \"#{level}\""
    if level <= CONSOLE_LEVEL 
      puts "#{LOG_LEVEL[level]}#{toPrint}"
    end
  end
  
  
  
  
end
