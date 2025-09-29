# typed: strong

module MetronomeSDK
  module Models
    class NotificationUpdateParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::NotificationUpdateParams,
            MetronomeSDK::Internal::AnyHash
          )
        end

      # Updated policy configuration. The policy.type must match the existing lifecycle
      # event type.
      sig do
        returns(
          T.any(
            MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy,
            MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy
          )
        )
      end
      attr_accessor :policy

      # The ID of the notification configuration to edit. Not provided when updating the
      # configuration for system events
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Set to true to enable webhook messages for the notification indicated in the
      # policy, false to disable. Only supported by system lifecycle events.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_enabled

      sig { params(is_enabled: T::Boolean).void }
      attr_writer :is_enabled

      sig do
        params(
          policy:
            T.any(
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy::OrHash,
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy::OrHash
            ),
          id: String,
          is_enabled: T::Boolean,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Updated policy configuration. The policy.type must match the existing lifecycle
        # event type.
        policy:,
        # The ID of the notification configuration to edit. Not provided when updating the
        # configuration for system events
        id: nil,
        # Set to true to enable webhook messages for the notification indicated in the
        # policy, false to disable. Only supported by system lifecycle events.
        is_enabled: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            policy:
              T.any(
                MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy,
                MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy
              ),
            id: String,
            is_enabled: T::Boolean,
            request_options: MetronomeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Updated policy configuration. The policy.type must match the existing lifecycle
      # event type.
      module Policy
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy,
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy
            )
          end

        class LifecycleEventOffsetPolicy < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy,
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

        class LifecycleEventSystemPolicy < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The type of lifecycle event (e.g., "contract.create", "contract.start")
          sig { returns(String) }
          attr_accessor :type

          sig { params(type: String).returns(T.attached_class) }
          def self.new(
            # The type of lifecycle event (e.g., "contract.create", "contract.start")
            type:
          )
          end

          sig { override.returns({ type: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[MetronomeSDK::NotificationUpdateParams::Policy::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
