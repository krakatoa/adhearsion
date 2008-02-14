Adhearsion::Configuration.configure do |config|
  # Whether incoming calls be automatically answered. Defaults to true.
  # config.automatically_answer_incoming_calls = false
  
  # Whether the other end hanging up should end the call immediately. Defaults to true.
  # config.end_call_on_hangup = false
  
  # Whether to end the call immediately if an unrescued exception is caught. Defaults to true.
  # config.end_call_on_error = false
  
  # By default Asterisk is enabled with the default settings
  config.enable_asterisk
  # config.asterisk.enable_ami :host => "127.0.0.1", :username => "admin", :password => "password"
  
  # config.enable_drb 
  
  # Streamlined Rails integration! The first argument should be a relative or absolute path to 
  # the Rails app folder with which you're integrating. The second argument must be one of the 
  # the following: :development, :production, or :test.
  
  # config.enable_rails :path => 'gui', :env => :development
  
  # Note: You CANNOT do enable_rails and enable_database at the same time. When you enable Rails,
  # it will automatically connect to same database Rails does and load the Rails app's models.
  
  # config.asterisk.speech_engine = :cepstral
  
  # Configure FreeSwitch
  # config.enable_freeswitch :listening_port => 4572
  
  # Configure a database to use ActiveRecord-backed models.
  # config.enable_database :adapter  => 'mysql',
  #                        :username => 'joe', 
  #                        :password => 'secret',
  #                        :host     => 'db.example.org'
end

# If you want another applications to read your database settings
# programatically, you can enable the database like this:
#
#  config.enable_database YAML.load_file("config/active_record.yml")
#
# You may want to name the file database.yml but this may conflict
# when you're doing Rails app integration since Rails separates database
# settings into environments (development, test, production).