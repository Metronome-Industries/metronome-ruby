# typed: strong

module MetronomeSDK
  module Models
    class BaseUsageFilter < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::BaseUsageFilter, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :group_key

      sig { returns(T::Array[String]) }
      attr_accessor :group_values

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_at

      sig { params(starting_at: Time).void }
      attr_writer :starting_at

      sig do
        params(
          group_key: String,
          group_values: T::Array[String],
          starting_at: Time
        ).returns(T.attached_class)
      end
      def self.new(group_key:, group_values:, starting_at: nil)
      end

      sig do
        override.returns(
          {
            group_key: String,
            group_values: T::Array[String],
            starting_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
