require 'pp'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

class Solution
  @@db = nil

  def self.mongo_client
    @@db = Mongo::Client.new("mongodb://localhost:27017").use("test")
  end

  def self.collection
    @@db[:zips]
  end

  def sample
    @@db[:zips].find.first
  end
end

#byebug
db=Solution.mongo_client
p db
zips=Solution.collection
p zips
s=Solution.new
pp s.sample
