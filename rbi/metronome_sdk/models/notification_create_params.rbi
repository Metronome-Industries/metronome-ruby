# typed: strong

module MetronomeSDK
  module Models
    class NotificationCreateParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::NotificationCreateParams,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # The name for this offset notification configuration.
      sig { returns(String) }
      attr_accessor :name

      # The offset lifecycle event policy that defines when and how this notification
      # should be triggered. The lifecycle event type is inferred from the policy.type
      # field.
      sig { returns(MetronomeSDK::NotificationCreateParams::Policy) }
      attr_reader :policy

      sig do
        params(
          policy: MetronomeSDK::NotificationCreateParams::Policy::OrHash
        ).void
      end
      attr_writer :policy

      # Optional uniqueness key to prevent duplicate notification configurations.
      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig do
        params(
          name: String,
          policy: MetronomeSDK::NotificationCreateParams::Policy::OrHash,
          uniqueness_key: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name for this offset notification configuration.
        name:,
        # The offset lifecycle event policy that defines when and how this notification
        # should be triggered. The lifecycle event type is inferred from the policy.type
        # field.
        policy:,
        # Optional uniqueness key to prevent duplicate notification configurations.
        uniqueness_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            policy: MetronomeSDK::NotificationCreateParams::Policy,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Policy < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::NotificationCreateParams::Policy,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ISO-8601 duration string indicating how much time before or after the base event
        # this notification should be sent. Positive values indicate notifications after
        # the event, negative values indicate notifications before the event. Examples:
        # "P1D" (1 day after), "-PT2H" (2 hours before)
        sig { returns(String) }
        attr_accessor :offset

        # The type of lifecycle event that this offset is based on.
        sig { returns(String) }
        attr_accessor :type

        # The offset lifecycle event policy that defines when and how this notification
        # should be triggered. The lifecycle event type is inferred from the policy.type
        # field.
        sig { params(offset: String, type: String).returns(T.attached_class) }
        def self.new(
          # ISO-8601 duration string indicating how much time before or after the base event
          # this notification should be sent. Positive values indicate notifications after
          # the event, negative values indicate notifications before the event. Examples:
          # "P1D" (1 day after), "-PT2H" (2 hours before)
          offset:,
          # The type of lifecycle event that this offset is based on.
          type:
        )
        end

        sig { override.returns({ offset: String, type: String }) }
        def to_hash
        end
      end
    end
  end
end
