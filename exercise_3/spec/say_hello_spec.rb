require 'say_hello'

describe SayHello do
    let(:message_double) {double :message_double}
    let(:email_double) {double :email_double, message: message_double}
    let(:email_class_double) {double :emily_class, new: email_double}

    it 'send a message' do 
        expect(message_double).to receive(:send)
        subject.run(email_class_double)
    end
end