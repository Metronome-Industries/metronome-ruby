# typed: strong

module Metronome
  module Models
    module Contracts
      class ProductArchiveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :product_id

        sig do
          params(
            product_id: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(product_id:, request_options: {})
        end

        sig { override.returns({product_id: String, request_options: Metronome::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
