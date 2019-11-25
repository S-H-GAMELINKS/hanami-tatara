require 'tatara'

class Hoge
  def initialize
    @value = "HogeHoge"
  end
end

module Web
  module Controllers
    module Home
      class Index
        include Web::Action

        expose :int, :tatara, :hoge, :container

        def call(params)
          @int = 42
          @tatara = Tatara::Integer.new
          @tatara.val = 42
          @hoge = Hoge.new

          @container = Tatara::IntArray.new

          (1..100).map(&@container.method(:<<))
        end
      end
    end
  end
end
