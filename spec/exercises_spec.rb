require 'exercises'

describe Note do
  let(:formatter) { double :formatter }

  describe '#display' do
    it 'displays formatter note information' do
      note = Note.new("title", "body", formatter)
      allow(formatter).to receive(:format).and_return("Title: title\nbody")
      expect(note.display).to eq("Title: title\nbody")
    end
  end
end
