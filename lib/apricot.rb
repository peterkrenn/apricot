require 'rational'
require 'set'

%w[parser compiler ast generator stages printers locals special_forms list
identifier constant ruby_ext].each {|r| require "apricot/#{r}" }

module Apricot
  @gensym = 0

  def self.gensym(prefix = 'G')
    :"#{prefix}__#{@gensym += 1}"
  end
end
