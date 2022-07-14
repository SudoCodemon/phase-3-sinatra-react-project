# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'
configure :production do 
    db = URL.parse(ENV[ 'postgres://wjdyalsgfxouzm:692ca0193b273ddf87c9257c48a23a14579753f91e42412136ebfbad8dd9b947@ec2-52-20-166-21.compute-1.amazonaws.com:5432/d1lrgudk1ghe3i'] || 'postgres://localhost.mydb')

    AcviteRecord::Base.establish.connection (
        :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
        :host => db.host,
        :username => db.user,
        :password => db.password,
        :database => db.path [1..-1],
        :encoding => 'utf8'
    )
end