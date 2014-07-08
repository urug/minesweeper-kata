$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'rspec'
require 'game'

class StubbedIO
  def initialize
    @buffer = []
  end
  def puts(text)
    @buffer << text
  end
  def read
    @buffer.join("\n")
  end
end
