# typed: strong

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventOffsetNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID for this offset notification configuration
        sig { returns(String) }
        attr_accessor :id

        # When this notification configuration was archived
        sig { returns(T.nilable(Time)) }
        attr_accessor :archived_at

        # RFC 3339 timestamp when this notification configuration was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Who created this notification configuration
        sig { returns(String) }
        attr_accessor :created_by

        # The environment type where this notification configuration was created.
        sig { returns(String) }
        attr_accessor :environment_type

        # The name for this offset notification configuration.
        sig { returns(String) }
        attr_accessor :name

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
          returns(
            MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            archived_at: T.nilable(Time),
            created_at: Time,
            created_by: String,
            environment_type: String,
            name: String,
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash,
            type:
              MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID for this offset notification configuration
          id:,
          # When this notification configuration was archived
          archived_at:,
          # RFC 3339 timestamp when this notification configuration was created.
          created_at:,
          # Who created this notification configuration
          created_by:,
          # The environment type where this notification configuration was created.
          environment_type:,
          # The name for this offset notification configuration.
          name:,
          policy:,
          # Indicates this is an offset lifecycle event notification
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived_at: T.nilable(Time),
              created_at: Time,
              created_by: String,
              environment_type: String,
              name: String,
              policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy,
              type:
                MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type::TaggedSymbol
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
              T.all(
                Symbol,
                MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFFSET_LIFECYCLE_EVENT =
            T.let(
              :OFFSET_LIFECYCLE_EVENT,
              MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type::TaggedSymbol
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
