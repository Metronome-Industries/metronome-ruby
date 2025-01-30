# typed: strong

module Metronome
  module Resources
    class Services
      sig { params(request_options: Metronome::RequestOpts).returns(Metronome::Models::ServiceListResponse) }
      def list(request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
