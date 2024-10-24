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
        required :name_, String, api_name: :name

        # @!attribute [rw] email
        #   @return [String]
        optional :email, String

        # @!parse
        #   # Create a new instance of Actor from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [String] :name
        #   #   @option data [String, nil] :email
        #   def initialize(data = {}) = super
      end

      class Status < Metronome::Enum
        SUCCESS = :success
        FAILURE = :failure
        PENDING = :pending
      end

      # @!parse
      #   # Create a new instance of AuditLogListResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :timestamp
      #   #   @option data [String, nil] :action
      #   #   @option data [Object, nil] :actor
      #   #   @option data [String, nil] :description
      #   #   @option data [String, nil] :resource_id
      #   #   @option data [String, nil] :resource_type
      #   #   @option data [String, nil] :status
      #   def initialize(data = {}) = super
    end
  end
end
