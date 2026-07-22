# typed: strong

module MetronomeSDK
  module Resources
    class Webhooks
      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
