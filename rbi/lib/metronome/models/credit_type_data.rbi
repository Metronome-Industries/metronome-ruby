# typed: strong

module Metronome
  module Models
    class CreditTypeData < Metronome::BaseModel
      Shape = T.type_alias { {id: String, name: String} }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { params(id: String, name: String).void }
      def initialize(id:, name:); end

      sig { returns(Metronome::Models::CreditTypeData::Shape) }
      def to_h; end
    end
  end
end
