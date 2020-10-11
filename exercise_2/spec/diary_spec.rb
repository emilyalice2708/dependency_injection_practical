require 'diary'

describe Diary do
    let(:entry) {double :entry, title: "Title"}
    let(:entry_class) {double :entry_class, new: entry}
    subject {described_class.new(entry_class)}

    it 'adds an entry' do
        subject.add("Title", "Body")
        expect(subject.index).to eq("Title")
    end
end