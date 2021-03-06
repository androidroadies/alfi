require 'spec_helper'

describe Alfi do

  it 'Test the query_url' do
    str = Alfi::SearchModel.query_url('picasso')
    expect(str).to eq 'http://search.maven.org/solrsearch/select?q=picasso&rows=350&wt=json'
  end

  it 'Request the webservice MOCK' do
    str = Alfi::SearchModel.query_url("quickutils")
    expect(str).to eq 'http://search.maven.org/solrsearch/select?q=quickutils&rows=350&wt=json'
  end

end