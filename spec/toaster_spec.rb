describe Toaster do
  subject { descibed_class.new }
  it "responds to #toast" do
    expect(subject).to respond_to :toast
  end
end