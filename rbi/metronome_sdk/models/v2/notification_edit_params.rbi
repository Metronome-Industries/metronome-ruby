# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::NotificationEditParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::V2::LifecycleEventOffsetPolicy) }
        attr_reader :policy

        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash
          ).void
        end
        attr_writer :policy

        # Indicates this is an offset lifecycle event notification
        sig do
          returns(MetronomeSDK::V2::NotificationEditParams::Type::OrSymbol)
        end
        attr_accessor :type

        # Set to true to enable webhook messages for the notification indicated in the
        # policy, false to disable. Only supported by system lifecycle events.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_enabled

        sig { params(is_enabled: T::Boolean).void }
        attr_writer :is_enabled

        # The ID of the notification configuration to edit.
        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash,
            type: MetronomeSDK::V2::NotificationEditParams::Type::OrSymbol,
            id: String,
            is_enabled: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          policy:,
          # Indicates this is an offset lifecycle event notification
          type:,
          # The ID of the notification configuration to edit.
          id:,
          # Set to true to enable webhook messages for the notification indicated in the
          # policy, false to disable. Only supported by system lifecycle events.
          is_enabled: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy,
              type: MetronomeSDK::V2::NotificationEditParams::Type::OrSymbol,
              is_enabled: T::Boolean,
              id: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Indicates this is an offset lifecycle event notification
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V2::NotificationEditParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFFSET_LIFECYCLE_EVENT =
            T.let(
              :OFFSET_LIFECYCLE_EVENT,
              MetronomeSDK::V2::NotificationEditParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::NotificationEditParams::Type::TaggedSymbol
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
