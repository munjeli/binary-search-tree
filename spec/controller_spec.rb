require 'spec_helper'
require 'controller'
require 'node'

describe Controller do
  let(:node) { Node.new('pickles', 18) }
  let(:controller) { Controller.new(node) }

  it 'has a root' do
    expect(controller.root).to be_a(Node)
  end

  it 'can insert a node' do
    controller.insert('gherkin', 17)
    expect(controller.root.left.name).to eq('gherkin')
  end

  it 'can print ordered names' do
    controller.insert('gherkin', 17)
    expect(controller.print_ordered_names).to eq('gherkin pickles ')
  end
end
