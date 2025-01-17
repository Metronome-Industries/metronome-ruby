# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # audit_log_list_response => {
    #   id: String,
    #   request: Metronome::Models::AuditLogListResponse::Request,
    #   timestamp: Time,
    #   action: String,
    #   actor: Metronome::Models::AuditLogListResponse::Actor,
    #   **_
    # }
    # ```
    class AuditLogListResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute request
      #
      #   @return [Metronome::Models::AuditLogListResponse::Request]
      required :request, -> { Metronome::Models::AuditLogListResponse::Request }

      # @!attribute timestamp
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute action
      #
      #   @return [String]
      optional :action, String

      # @!attribute actor
      #
      #   @return [Metronome::Models::AuditLogListResponse::Actor]
      optional :actor, -> { Metronome::Models::AuditLogListResponse::Actor }

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute resource_id
      #
      #   @return [String]
      optional :resource_id, String

      # @!attribute resource_type
      #
      #   @return [String]
      optional :resource_type, String

      # @!attribute status
      #
      #   @return [Symbol, Metronome::Models::AuditLogListResponse::Status]
      optional :status, enum: -> { Metronome::Models::AuditLogListResponse::Status }

      # @!parse
      #   # @param id [String]
      #   # @param request [Metronome::Models::AuditLogListResponse::Request]
      #   # @param timestamp [String]
      #   # @param action [String]
      #   # @param actor [Metronome::Models::AuditLogListResponse::Actor]
      #   # @param description [String]
      #   # @param resource_id [String]
      #   # @param resource_type [String]
      #   # @param status [String]
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # request => {
      #   id: String,
      #   ip: String,
      #   user_agent: String
      # }
      # ```
      class Request < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute ip
        #
        #   @return [String]
        optional :ip, String

        # @!attribute user_agent
        #
        #   @return [String]
        optional :user_agent, String

        # @!parse
        #   # @param id [String]
        #   # @param ip [String]
        #   # @param user_agent [String]
        #   #
        #   def initialize(id:, ip: nil, user_agent: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # actor => {
      #   id: String,
      #   name: String,
      #   email: String
      # }
      # ```
      class Actor < Metronome::BaseModel
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
        #   @return [String]
        optional :email, String

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   # @param email [String]
        #   #
        #   def initialize(id:, name:, email: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

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
      class Status < Metronome::Enum
        SUCCESS = :success
        FAILURE = :failure
        PENDING = :pending

        finalize!
      end
    end
  end
end
