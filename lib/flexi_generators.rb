require "version"

module FlexiGenerators
  module Rails
    if ::Rails.version < "3.1"
      require "twitter-bootstrap/railtie"
    else
      require "twitter-bootstrap/engine"
    end
  end
end