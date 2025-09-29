# typed: strong

module MetronomeSDK
  module Models
    class NotificationUpdateResponse < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::Models::NotificationUpdateResponse,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          MetronomeSDK::Models::NotificationUpdateResponse::Data::Variants
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T.any(
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::OrHash,
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              MetronomeSDK::Models::NotificationUpdateResponse::Data::Variants
          }
        )
      end
      def to_hash
      end

      module Data
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig,
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig
            )
          end

        class LifecycleEventSystemNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy
            )
          end
          attr_reader :policy

          sig do
            params(
              policy:
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy::OrHash
            ).void
          end
          attr_writer :policy

          # Indicates this is a system lifecycle event notification
          sig { returns(String) }
          attr_accessor :type

          # Whether or not webhook publishing for this lifecycle event is enabled
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_enabled

          sig { params(is_enabled: T::Boolean).void }
          attr_writer :is_enabled

          sig do
            params(
              policy:
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy::OrHash,
              type: String,
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
                policy:
                  MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy,
                type: String,
                is_enabled: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Policy < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy,
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
        end

        class LifecycleEventOffsetNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID for this offset notification configuration
          sig { returns(String) }
          attr_accessor :id

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

          sig do
            returns(
              MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy
            )
          end
          attr_reader :policy

          sig do
            params(
              policy:
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy::OrHash
            ).void
          end
          attr_writer :policy

          # Indicates this is an offset lifecycle event notification
          sig { returns(String) }
          attr_accessor :type

          sig do
            params(
              id: String,
              created_at: Time,
              created_by: String,
              environment_type: String,
              name: String,
              policy:
                MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy::OrHash,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID for this offset notification configuration
            id:,
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
                created_at: Time,
                created_by: String,
                environment_type: String,
                name: String,
                policy:
                  MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy,
                type: String
              }
            )
          end
          def to_hash
          end

          class Policy < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy,
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

            sig do
              params(offset: String, type: String).returns(T.attached_class)
            end
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

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::Models::NotificationUpdateResponse::Data::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
