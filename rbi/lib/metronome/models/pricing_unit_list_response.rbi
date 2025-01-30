# typed: strong

module Metronome
  module Models
    class PricingUnitListResponse < Metronome::BaseModel
      Shape = T.type_alias { {id: String, is_currency: T::Boolean, name: String} }

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_currency

      sig { params(is_currency: T::Boolean).void }
      attr_writer :is_currency

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(id: String, is_currency: T::Boolean, name: String).void }
      def initialize(id: nil, is_currency: nil, name: nil); end

      sig { returns(Metronome::Models::PricingUnitListResponse::Shape) }
      def to_h; end
    end
  end
end
