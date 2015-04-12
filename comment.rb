class Comment

  def initialize(author, text)
    @author = author
    @text = text
  end

  def to_s
    "#{@author.red}:\n#{@text}\n"
  end


end