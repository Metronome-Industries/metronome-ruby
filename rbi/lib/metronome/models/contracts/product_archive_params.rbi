# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductArchiveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias { T.all({product_id: String}, Metronome::RequestParameters::Shape) }

        sig { returns(String) }
        attr_accessor :product_id

        sig { params(product_id: String, request_options: Metronome::RequestOpts).void }
        def initialize(product_id:, request_options: {}); end

        sig { returns(Metronome::Models::Contracts::ProductArchiveParams::Shape) }
        def to_h; end
      end
    end
  end
end
