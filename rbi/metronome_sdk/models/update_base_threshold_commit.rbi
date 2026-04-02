# typed: strong

module MetronomeSDK
  module Models
    class UpdateBaseThresholdCommit < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::UpdateBaseThresholdCommit,
            MetronomeSDK::Internal::AnyHash
          )
        end

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

      # The priority of the commit, used to determine drawdown order. Lower priority
      # commits are consumed first. Defaults to 100 if not specified. On updates, set to
      # null to clear a previously configured priority.
      sig { returns(T.nilable(Float)) }
      attr_accessor :priority

      # The commit product that will be used to generate the line item for commit
      # payment.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      sig do
        params(
          description: String,
          name: String,
          priority: T.nilable(Float),
          product_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        description: nil,
        # Specify the name of the line item for the threshold charge. If left blank, it
        # will default to the commit product name.
        name: nil,
        # The priority of the commit, used to determine drawdown order. Lower priority
        # commits are consumed first. Defaults to 100 if not specified. On updates, set to
        # null to clear a previously configured priority.
        priority: nil,
        # The commit product that will be used to generate the line item for commit
        # payment.
        product_id: nil
      )
      end

      sig do
        override.returns(
          {
            description: String,
            name: String,
            priority: T.nilable(Float),
            product_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
