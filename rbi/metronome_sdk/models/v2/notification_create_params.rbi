# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::NotificationCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The name for this offset notification configuration.
        sig { returns(String) }
        attr_accessor :name

        # The offset lifecycle event policy that defines when and how this notification
        # should be triggered. The lifecycle event type is inferred from the policy.type
        # field.
        sig { returns(MetronomeSDK::V2::LifecycleEventOffsetPolicy) }
        attr_reader :policy

        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash
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
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash,
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
              policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy,
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
