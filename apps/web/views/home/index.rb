module Web
  module Views
    module Home
      class Index
        include Web::View

        def int
          42
        end
      end
    end
  end
end
