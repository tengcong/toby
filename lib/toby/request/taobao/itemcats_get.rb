# encoding: utf-8

class Toby::Request::Taobao::ItemcatsGet < Toby::Request::Base
  def initialize
    super
    @fields = 'cid,parent_cid,name,is_parent'
    @api_params[:fields] = @fields
    @response_key_path = "item_cats.item_cat"
    @request_params = [:fields, :cids, :parent_cid]
  end
end
