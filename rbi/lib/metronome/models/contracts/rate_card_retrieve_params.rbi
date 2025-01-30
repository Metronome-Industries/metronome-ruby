# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveParams < Metronome::Models::ID
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias { T.all({}, Metronome::RequestParameters::Shape) }

        sig { params(request_options: Metronome::RequestOpts).void }
        def initialize(request_options: {}); end

        sig { returns(Metronome::Models::Contracts::RateCardRetrieveParams::Shape) }
        def to_h; end
      end
    end
  end
end
