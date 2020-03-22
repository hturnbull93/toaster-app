require 'toaster'

describe Toaster do
  subject { described_class.new }
  let(:hovis) { Bread.new }

  it 'responds to #toast' do
    expect(subject).to respond_to :toast
  end
  it '#toast takes 1 or 2 arguments' do
    expect(subject).to respond_to(:toast).with(1..2).arguments
  end
  it '#toast returns an instance of the Bread class' do
    expect(subject.toast(Bread.new)).to be_instance_of(Bread)
  end
  it '#toast returns the same bread that was passed in' do
    expect(subject.toast(hovis)).to eq hovis
  end
  it "#toast at 1 minute returns bread that is 'toasted'" do
    subject.toast(hovis, 1)
    expect(hovis.toastiness).to eq 'toasted'
  end
end
