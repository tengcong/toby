# encoding: utf-8

describe Toby::Request::Taobao::ItemcatsGet do
  include_context "initialize client"

  it 'should returns a taobao item cats list, when it is executed.' do
    request = Toby::Request::Taobao::ItemcatsGet.new
    request.parent_cid = 0

    @client.stub(:request).and_return(fixture("taobao/itemcats_get.json"))
    items = @client.execute(request)

    items.first.name.should eq "汽车\/用品\/配件\/改装"
  end
end
