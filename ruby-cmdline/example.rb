require 'rainbow'
require 'slop'

VERSION = 'v0.1'

begin 
    opts = Slop.parse do |o|
        o.banner = "Usage: example [options]"
        o.on '-h', '--help', 'print usage' do
            puts o
            exit
        end
        o.on '-v', '--version', 'print the version' do
            puts VERSION
            exit
        end
    end
rescue Slop::Error
    puts Rainbow("Invalid Arguments. -h for usage.").red 
    exit 1
end 

puts Rainbow("Done").green