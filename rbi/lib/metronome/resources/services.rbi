# typed: strong

module Metronome
  module Resources
    class Services
      sig do
        params(request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(Metronome::Models::ServiceListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
