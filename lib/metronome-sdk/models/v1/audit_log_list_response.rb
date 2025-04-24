# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class AuditLogListResponse < MetronomeSDK::BaseModel
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

        # @!attribute [r] action
        #
        #   @return [String, nil]
        optional :action, String

        # @!parse
        #   # @return [String]
        #   attr_writer :action

        # @!attribute [r] actor
        #
        #   @return [MetronomeSDK::Models::V1::AuditLogListResponse::Actor, nil]
        optional :actor, -> { MetronomeSDK::Models::V1::AuditLogListResponse::Actor }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::AuditLogListResponse::Actor]
        #   attr_writer :actor

        # @!attribute [r] description
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] resource_id
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :resource_id

        # @!attribute [r] resource_type
        #
        #   @return [String, nil]
        optional :resource_type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :resource_type

        # @!attribute [r] status
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status, nil]
        optional :status, enum: -> { MetronomeSDK::Models::V1::AuditLogListResponse::Status }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status]
        #   attr_writer :status

        # @!parse
        #   # @param id [String]
        #   # @param request [MetronomeSDK::Models::V1::AuditLogListResponse::Request]
        #   # @param timestamp [Time]
        #   # @param action [String]
        #   # @param actor [MetronomeSDK::Models::V1::AuditLogListResponse::Actor]
        #   # @param description [String]
        #   # @param resource_id [String]
        #   # @param resource_type [String]
        #   # @param status [Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status]
        #   #
        #   def initialize(
        #     id:,
        #     request:,
        #     timestamp:,
        #     action: nil,
        #     actor: nil,
        #     description: nil,
        #     resource_id: nil,
        #     resource_type: nil,
        #     status: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Request < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute [r] ip
          #
          #   @return [String, nil]
          optional :ip, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ip

          # @!attribute [r] user_agent
          #
          #   @return [String, nil]
          optional :user_agent, String

          # @!parse
          #   # @return [String]
          #   attr_writer :user_agent

          # @!parse
          #   # @param id [String]
          #   # @param ip [String]
          #   # @param user_agent [String]
          #   #
          #   def initialize(id:, ip: nil, user_agent: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class Actor < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] email
          #
          #   @return [String, nil]
          optional :email, String

          # @!parse
          #   # @return [String]
          #   attr_writer :email

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   # @param email [String]
          #   #
          #   def initialize(id:, name:, email: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case status
        # in :success
        #   # ...
        # in :failure
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class Status < MetronomeSDK::Enum
          SUCCESS = :success
          FAILURE = :failure
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
