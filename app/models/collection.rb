require "discogs-wrapper"
require "byebug"
require "json"
require "awesome_print"

class Collection

  attr_accessor :collection

  def initialize
    @wrapper = Discogs::Wrapper.new("api")
    @collection = @wrapper.get_user_collection("harim1206", pagination={page: 2})

  end


end
