require 'spec_helper'
require 'controller'
require 'node'

describe Controller do
  let(:node) {Node.new('pickles', 18)}
  let(:controller) {Controller.new(node)}

  it 'has a root' do
    expect(controller.root).to be_a(Node)
  end

  it 'can insert a node' do
    expect(controller.insert('gherkin', 17)).to be_a(Node)
    expect(controller.root.left.name).to eq('gherkin')  
  end
  it 'can print ordered names'
end
