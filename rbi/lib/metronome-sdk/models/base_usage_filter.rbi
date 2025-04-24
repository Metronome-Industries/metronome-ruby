# typed: strong

module MetronomeSDK
  module Models
    class BaseUsageFilter < MetronomeSDK::BaseModel
      sig { returns(String) }
      def group_key
      end

      sig { params(_: String).returns(String) }
      def group_key=(_)
      end

      sig { returns(T::Array[String]) }
      def group_values
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def group_values=(_)
      end

      sig { returns(T.nilable(Time)) }
      def starting_at
      end

      sig { params(_: Time).returns(Time) }
      def starting_at=(_)
      end

      sig { params(group_key: String, group_values: T::Array[String], starting_at: Time).void }
      def initialize(group_key:, group_values:, starting_at: nil)
      end

      sig { override.returns({group_key: String, group_values: T::Array[String], starting_at: Time}) }
      def to_hash
      end
    end
  end
end
