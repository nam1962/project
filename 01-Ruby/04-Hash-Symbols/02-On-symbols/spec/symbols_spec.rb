require "symbols"

describe "quizz" do
  it "answers are not all correct" do
    all_answers = are_identical_symbols_same_objects? &&
                  !are_identical_strings_same_objects?
    expect(all_answers).to be true
  end
end

describe "#convert_string_to_symbol" do
  it "should return the symbolized version" do
    expect(convert_string_to_symbol("foo")).to eq :foo
    expect(convert_string_to_symbol("bar")).to eq :bar
  end
end

describe "#convert_symbol_to_string" do
  it "should return the stringified version" do
    expect(convert_symbol_to_string(:foo)).to eq "foo"
    expect(convert_symbol_to_string(:bar)).to eq "bar"
  end
end

describe "#me" do
  let(:me_hash) { me }

  it "should tell your age" do
    expect(me_hash).to be_instance_of(Hash)
    expect(me_hash[:age]).to be_instance_of(Numeric)
  end

  it "should tell your name" do
    expect(me_hash).to  be_instance_of(Hash)
    expect(me_hash[:name]).to exist
  end
end

describe "#fruits" do
  let(:the_fruits) { fruits }

  it "should be an array" do
    expect(the_fruits).to be_instance_of(Array)
    expect(the_fruits.first).to be_instance_of(String)
  end
end