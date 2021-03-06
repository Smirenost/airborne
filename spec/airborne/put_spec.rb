require 'spec_helper'

describe 'put' do
  it 'should allow testing on put requests w/no body' do
    mock_put('simple_put')
    put '/simple_put'
    expect_json_types(status: :string, someNumber: :int)
  end

  it 'should allow testing on put requests w/empty body' do
    mock_put('simple_put')
    put '/simple_put', {}
    expect_json_types(status: :string, someNumber: :int)
  end

  it 'should allow testing on put requests w/body' do
    mock_put('simple_put')
    put '/simple_put', {:key=>:value}
    expect_json_types(status: :string, someNumber: :int)
  end

  it 'should allow testing on put requests w/body, empty string' do
    mock_put('simple_put')
    put '/simple_put', ''
    expect_json_types(status: :string, someNumber: :int)
  end
end
