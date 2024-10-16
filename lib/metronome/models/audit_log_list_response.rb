# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] timestamp
      #   @return [Time]
      required :timestamp, Time

      # @!attribute [rw] action
      #   @return [String]
      optional :action, String

      # @!attribute [rw] actor
      #   @return [Metronome::Models::AuditLogListResponse::Actor]
      optional :actor, -> { Metronome::Models::AuditLogListResponse::Actor }

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] resource_id
      #   @return [String]
      optional :resource_id, String

      # @!attribute [rw] resource_type
      #   @return [String]
      optional :resource_type, String

      # @!attribute [rw] status
      #   @return [Symbol, Metronome::Models::AuditLogListResponse::Status]
      optional :status, enum: -> { Metronome::Models::AuditLogListResponse::Status }

      class Actor < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] email
        #   @return [String]
        optional :email, String

        # Create a new instance of Actor from a Hash of raw data.
        #
        # @overload initialize(id: nil, name: nil, email: nil)
        # @param id [String]
        # @param name [String]
        # @param email [String]
        def initialize(data = {})
          super
        end
      end

      class Status < Metronome::Enum
        SUCCESS = :success
        FAILURE = :failure
        PENDING = :pending
      end

      # Create a new instance of AuditLogListResponse from a Hash of raw data.
      #
      # @overload initialize(id: nil, timestamp: nil, action: nil, actor: nil, description: nil, resource_id: nil, resource_type: nil, status: nil)
      # @param id [String]
      # @param timestamp [String]
      # @param action [String]
      # @param actor [Object]
      # @param description [String]
      # @param resource_id [String]
      # @param resource_type [String]
      # @param status [String]
      def initialize(data = {})
        super
      end
    end
  end
end
