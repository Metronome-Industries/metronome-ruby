# typed: strong

module MetronomeSDK
  module Models
    class BaseUsageFilter < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :group_key

      sig { returns(T::Array[String]) }
      attr_accessor :group_values

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_at

      sig { params(starting_at: Time).void }
      attr_writer :starting_at

      sig do
        params(group_key: String, group_values: T::Array[String], starting_at: Time).returns(T.attached_class)
      end
      def self.new(group_key:, group_values:, starting_at: nil); end

      sig { override.returns({group_key: String, group_values: T::Array[String], starting_at: Time}) }
      def to_hash; end
    end
  end
end
