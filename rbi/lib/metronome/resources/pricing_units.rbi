# typed: strong

module Metronome
  module Resources
    class PricingUnits
      sig do
        params(
          limit: Integer,
          next_page: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::CursorPage[Metronome::Models::PricingUnitListResponse])
      end
      def list(limit: nil, next_page: nil, request_options: {})
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
