# typed: strong

module MetronomeSDK
  module Models
    module Notifications
      class OffsetListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::Notifications::OffsetListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::Notifications::OffsetListResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::Notifications::OffsetListResponse::Data::OrHash
              ],
            cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, cursor: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::Notifications::OffsetListResponse::Data
                ],
              cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::Notifications::OffsetListResponse::Data,
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

          sig do
            returns(
              MetronomeSDK::Models::Notifications::OffsetListResponse::Data::Policy
            )
          end
          attr_reader :policy

          sig do
            params(
              policy:
                MetronomeSDK::Models::Notifications::OffsetListResponse::Data::Policy::OrHash
            ).void
          end
          attr_writer :policy

          # Indicates this is an offset lifecycle event notification
          sig { returns(String) }
          attr_accessor :type

          sig do
            params(
              id: String,
              archived_at: T.nilable(Time),
              created_at: Time,
              created_by: String,
              environment_type: String,
              name: String,
              policy:
                MetronomeSDK::Models::Notifications::OffsetListResponse::Data::Policy::OrHash,
              type: String
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
                policy:
                  MetronomeSDK::Models::Notifications::OffsetListResponse::Data::Policy,
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
                  MetronomeSDK::Models::Notifications::OffsetListResponse::Data::Policy,
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
      end
    end
  end
end
