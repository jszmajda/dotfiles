require "rubygems"
require "pp"
begin
  require 'irb/ext/save-history'
rescue LoadError => e
end

# begin
#   require 'wirble'
#   Wirble.init
#   Wirble.colorize
# rescue LoadError => e
# end

IRB.conf[:SAVE_HISTORY] = 25
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

if defined?(Rails) && Rails.env
  # Set up the prompt to be slightly more informative
  rails_env = Rails.env.downcase[0,3]
  kol = case rails_env
        when 'dev'
          "\e[32m"
        when 'tes'
          "\e[34m"
        when 'pro'
          "\e[31m"
        end
  current_app = Dir.pwd.split('/').last
  IRB.conf[:PROMPT].reverse_merge!(:RAILS_ENV => 
                                   {
                                     # :PROMPT_I=>"#{current_app} #{kol}#{rails_env}\e[0m >> ", 
                                     # :PROMPT_N=>"#{current_app} #{kol}#{rails_env}\e[0m >> ", 
                                     :PROMPT_I=>"#{current_app} #{rails_env} >> ", 
                                     :PROMPT_N=>"#{current_app} #{rails_env} >> ", 
                                     :PROMPT_S=>nil, 
                                     :PROMPT_C=>"?> ", 
                                     :RETURN=>"=> %s\n"
                                   })
  IRB.conf[:PROMPT_MODE] = :RAILS_ENV
end
