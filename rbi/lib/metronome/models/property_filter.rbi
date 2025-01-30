# typed: strong

module Metronome
  module Models
    class PropertyFilter < Metronome::BaseModel
      Shape = T.type_alias do
        {name: String, exists: T::Boolean, in_values: T::Array[String], not_in_values: T::Array[String]}
      end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :exists

      sig { params(exists: T::Boolean).void }
      attr_writer :exists

      sig { returns(T::Array[String]) }
      attr_reader :in_values

      sig { params(in_values: T::Array[String]).void }
      attr_writer :in_values

      sig { returns(T::Array[String]) }
      attr_reader :not_in_values

      sig { params(not_in_values: T::Array[String]).void }
      attr_writer :not_in_values

      sig do
        params(
          name: String,
          exists: T::Boolean,
          in_values: T::Array[String],
          not_in_values: T::Array[String]
        ).void
      end
      def initialize(name:, exists: nil, in_values: nil, not_in_values: nil); end

      sig { returns(Metronome::Models::PropertyFilter::Shape) }
      def to_h; end
    end
  end
end
