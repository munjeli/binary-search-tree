require 'spec_helper'
require 'node'

describe Node do
  let(:node) { Node.new('pickles', 18) }

  it 'has a name' do
    expect(node.name).to eq 'pickles'
  end
  it 'has a weight' do
    expect(node.weight).to eq 18
  end
  it 'can have a left child' do
    expect(node.left).to be_nil
  end
  it 'can have a right child' do
    expect(node.right).to be_nil
  end
end
