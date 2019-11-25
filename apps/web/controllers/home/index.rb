require 'tatara'

module Web
  module Controllers
    module Home
      class Index
        include Web::Action

        expose :int, :tatara

        def call(params)
          @int = 42
          @tatara = Tatara::Integer.new
        end
      end
    end
  end
end
