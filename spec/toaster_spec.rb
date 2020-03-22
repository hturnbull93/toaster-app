require 'toaster'

describe Toaster do
  subject { described_class.new }
  let(:hovis) { Bread.new }

  it 'responds to #toast' do
    expect(subject).to respond_to :toast
  end
  it '#toast takes 1 argument' do
    expect(subject).to respond_to(:toast).with(1).argument
  end
  it '#toast returns an instance of the Bread class' do
    expect(subject.toast(Bread.new)).to be_instance_of(Bread)
  end
  it '#toast returns the same bread that was passed in' do
    expect(subject.toast(hovis)).to eq hovis
  end

end
