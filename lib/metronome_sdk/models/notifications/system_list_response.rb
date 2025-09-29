# frozen_string_literal: true

module MetronomeSDK
  module Models
    module Notifications
      # @see MetronomeSDK::Resources::Notifications::System#list
      class SystemListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::Notifications::SystemListResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Notifications::SystemListResponse::Data] }

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!method initialize(data:, cursor: nil)
        #   @param data [Array<MetronomeSDK::Models::Notifications::SystemListResponse::Data>]
        #   @param cursor [String, nil]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute policy
          #
          #   @return [MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy]
          required :policy, -> { MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy }

          # @!attribute type
          #   Indicates this is a system lifecycle event notification
          #
          #   @return [String]
          required :type, String

          # @!attribute is_enabled
          #   Whether or not webhook publishing for this lifecycle event is enabled
          #
          #   @return [Boolean, nil]
          optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!method initialize(policy:, type:, is_enabled: nil)
          #   @param policy [MetronomeSDK::Models::Notifications::SystemListResponse::Data::Policy]
          #
          #   @param type [String] Indicates this is a system lifecycle event notification
          #
          #   @param is_enabled [Boolean] Whether or not webhook publishing for this lifecycle event is enabled

          # @see MetronomeSDK::Models::Notifications::SystemListResponse::Data#policy
          class Policy < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute type
            #   The type of lifecycle event (e.g., "contract.create", "contract.start")
            #
            #   @return [String]
            required :type, String

            # @!method initialize(type:)
            #   @param type [String] The type of lifecycle event (e.g., "contract.create", "contract.start")
          end
        end
      end
    end
  end
end
