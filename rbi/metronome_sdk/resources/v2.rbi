# typed: strong

module MetronomeSDK
  module Resources
    class V2
      sig { returns(MetronomeSDK::Resources::V2::Contracts) }
      attr_reader :contracts

      sig { returns(MetronomeSDK::Resources::V2::Notifications) }
      attr_reader :notifications

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
