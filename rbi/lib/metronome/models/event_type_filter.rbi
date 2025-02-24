# typed: strong

module Metronome
  module Models
    class EventTypeFilter < Metronome::BaseModel
      sig { returns(T.nilable(T::Array[String])) }
      def in_values
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def in_values=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def not_in_values
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def not_in_values=(_)
      end

      sig { params(in_values: T::Array[String], not_in_values: T::Array[String]).void }
      def initialize(in_values: nil, not_in_values: nil)
      end

      sig { override.returns({in_values: T::Array[String], not_in_values: T::Array[String]}) }
      def to_hash
      end
    end
  end
end
