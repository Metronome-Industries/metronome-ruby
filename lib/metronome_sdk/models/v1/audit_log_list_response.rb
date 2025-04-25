# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::AuditLogs#list
      class AuditLogListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute request
        #
        #   @return [MetronomeSDK::Models::V1::AuditLogListResponse::Request]
        required :request, -> { MetronomeSDK::Models::V1::AuditLogListResponse::Request }

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute action
        #
        #   @return [String, nil]
        optional :action, String

        # @!attribute actor
        #
        #   @return [MetronomeSDK::Models::V1::AuditLogListResponse::Actor, nil]
        optional :actor, -> { MetronomeSDK::Models::V1::AuditLogListResponse::Actor }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute resource_id
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute resource_type
        #
        #   @return [String, nil]
        optional :resource_type, String

        # @!attribute status
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status, nil]
        optional :status, enum: -> { MetronomeSDK::Models::V1::AuditLogListResponse::Status }

        # @!method initialize(id:, request:, timestamp:, action: nil, actor: nil, description: nil, resource_id: nil, resource_type: nil, status: nil)
        #   @param id [String]
        #   @param request [MetronomeSDK::Models::V1::AuditLogListResponse::Request]
        #   @param timestamp [Time]
        #   @param action [String]
        #   @param actor [MetronomeSDK::Models::V1::AuditLogListResponse::Actor]
        #   @param description [String]
        #   @param resource_id [String]
        #   @param resource_type [String]
        #   @param status [Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status]

        # @see MetronomeSDK::Models::V1::AuditLogListResponse#request
        class Request < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute ip
          #
          #   @return [String, nil]
          optional :ip, String

          # @!attribute user_agent
          #
          #   @return [String, nil]
          optional :user_agent, String

          # @!method initialize(id:, ip: nil, user_agent: nil)
          #   @param id [String]
          #   @param ip [String]
          #   @param user_agent [String]
        end

        # @see MetronomeSDK::Models::V1::AuditLogListResponse#actor
        class Actor < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute email
          #
          #   @return [String, nil]
          optional :email, String

          # @!method initialize(id:, name:, email: nil)
          #   @param id [String]
          #   @param name [String]
          #   @param email [String]
        end

        # @see MetronomeSDK::Models::V1::AuditLogListResponse#status
        module Status
          extend MetronomeSDK::Internal::Type::Enum

          SUCCESS = :success
          FAILURE = :failure
          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
