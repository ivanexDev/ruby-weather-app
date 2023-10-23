require "colorize"
module Weather_Types
    def self.sunny
puts """
          
                   \\ | /
                 '-.;;;.-'
                -==;;;;;==-
                 .-';;;'-.
                   / | \\    
""".yellow
    end
    def self.clouds
puts """
                    .--.   
                 .-(    ). 
                (___.__)__) 
 """
    end
    def self.rain
puts """
                    .--.   
                 .-(    ). 
                (___.__)__)
"""
puts "                  ‘ ‘ ‘ ‘".blue
puts "                 ‘ ‘ ‘ ‘".blue

    end
end
