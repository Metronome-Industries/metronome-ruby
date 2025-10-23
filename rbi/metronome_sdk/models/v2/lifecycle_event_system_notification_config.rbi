# typed: strong

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventSystemNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::LifecycleEventSystemNotificationConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::V2::LifecycleEventSystemPolicy) }
        attr_reader :policy

        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventSystemPolicy::OrHash
          ).void
        end
        attr_writer :policy

        # Indicates this is a system lifecycle event notification
        sig do
          returns(
            MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Whether or not webhook publishing for this lifecycle event is enabled
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_enabled

        sig { params(is_enabled: T::Boolean).void }
        attr_writer :is_enabled

        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventSystemPolicy::OrHash,
            type:
              MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type::OrSymbol,
            is_enabled: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          policy:,
          # Indicates this is a system lifecycle event notification
          type:,
          # Whether or not webhook publishing for this lifecycle event is enabled
          is_enabled: nil
        )
        end

        sig do
          override.returns(
            {
              policy: MetronomeSDK::V2::LifecycleEventSystemPolicy,
              type:
                MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type::TaggedSymbol,
              is_enabled: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Indicates this is a system lifecycle event notification
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SYSTEM_LIFECYCLE_EVENT =
            T.let(
              :SYSTEM_LIFECYCLE_EVENT,
              MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
