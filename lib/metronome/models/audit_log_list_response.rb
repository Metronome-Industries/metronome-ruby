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

      # @!attribute [r] action
      #
      #   @return [String, nil]
      optional :action, String

      # @!parse
      #   # @return [String]
      #   attr_writer :action

      # @!attribute [r] actor
      #
      #   @return [Metronome::Models::AuditLogListResponse::Actor, nil]
      optional :actor, -> { Metronome::Models::AuditLogListResponse::Actor }

      # @!parse
      #   # @return [Metronome::Models::AuditLogListResponse::Actor]
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
      #   @return [Symbol, Metronome::Models::AuditLogListResponse::Status, nil]
      optional :status, enum: -> { Metronome::Models::AuditLogListResponse::Status }

      # @!parse
      #   # @return [Symbol, Metronome::Models::AuditLogListResponse::Status]
      #   attr_writer :status

      # @!parse
      #   # @param id [String]
      #   # @param request [Metronome::Models::AuditLogListResponse::Request]
      #   # @param timestamp [Time]
      #   # @param action [String]
      #   # @param actor [Metronome::Models::AuditLogListResponse::Actor]
      #   # @param description [String]
      #   # @param resource_id [String]
      #   # @param resource_type [String]
      #   # @param status [Symbol, Metronome::Models::AuditLogListResponse::Status]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
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
      class Status < Metronome::Enum
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
