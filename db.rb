require 'mongoid'

con = Mongo::Connection.new
Mongoid.database = con['web']

class Page
	include Mongoid::Document
	field :title, type: String, default: ''
	field :url, type: String
	field :keywords, type: Array
	field :description, type: String
end