# typed: strong

module Metronome
  module Models
    class PropertyFilter < Metronome::BaseModel
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def exists
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def exists=(_)
      end

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

      sig do
        params(
          name: String,
          exists: T::Boolean,
          in_values: T::Array[String],
          not_in_values: T::Array[String]
        ).void
      end
      def initialize(name:, exists: nil, in_values: nil, not_in_values: nil)
      end

      sig do
        override
          .returns({
                     name: String,
                     exists: T::Boolean,
                     in_values: T::Array[String],
                     not_in_values: T::Array[String]
                   })
      end
      def to_hash
      end
    end
  end
end
