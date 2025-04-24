# typed: strong

module MetronomeSDK
  module Resources
    class V2
      sig { returns(MetronomeSDK::Resources::V2::Contracts) }
      def contracts
      end

      sig { params(client: MetronomeSDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
