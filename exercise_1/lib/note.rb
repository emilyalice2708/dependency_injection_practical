## Rewrite the below code to enable class testing in isolation:

=begin
class Note
  def initialize(title, body)
    @title = title
    @body = body
    @formatter = NoteFormatter.new
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
=end

## Having an option to initialize a new Note object with a formatter
## means we can easily inject a formatter double object instead.
class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def formate(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
