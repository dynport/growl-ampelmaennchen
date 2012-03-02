require "growl-ampelmaennchen/version"

module Growl
  module Ampelmaennchen
    class << self
      def asset_root
        File.expand_path("../../assets", __FILE__)
      end
      
      [:error, :failed, :info, :passed, :pending].each do |method|
        define_method(method) do
          "#{asset_root}/#{method}.png"
        end
      end
    end
  end
end
