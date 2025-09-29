# typed: strong

module MetronomeSDK
  module Models
    module Notifications
      class SystemListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::Notifications::SystemListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::Notifications::SystemListResponse::Data
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
                MetronomeSDK::Models::Notifications::SystemListResponse::Data::OrHash
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
                  MetronomeSDK::Models::Notifications::SystemListResponse::Data
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
                MetronomeSDK::Models::Notifications::SystemListResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy
            )
          end
          attr_reader :policy

          sig do
            params(
              policy:
                MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy::OrHash
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
                MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy::OrHash,
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
                  MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy,
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
                  MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy,
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
      end
    end
  end
end
