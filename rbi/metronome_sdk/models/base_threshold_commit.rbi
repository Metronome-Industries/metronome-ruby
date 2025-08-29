# typed: strong

module MetronomeSDK
  module Models
    class BaseThresholdCommit < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::BaseThresholdCommit,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # The commit product that will be used to generate the line item for commit
      # payment.
      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Specify the name of the line item for the threshold charge. If left blank, it
      # will default to the commit product name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(product_id: String, description: String, name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The commit product that will be used to generate the line item for commit
        # payment.
        product_id:,
        description: nil,
        # Specify the name of the line item for the threshold charge. If left blank, it
        # will default to the commit product name.
        name: nil
      )
      end

      sig do
        override.returns(
          { product_id: String, description: String, name: String }
        )
      end
      def to_hash
      end
    end
  end
end
