# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

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
      #   # @param timestamp [String]
      #   # @param action [String, nil]
      #   # @param actor [Object, nil]
      #   # @param description [String, nil]
      #   # @param resource_id [String, nil]
      #   # @param resource_type [String, nil]
      #   # @param status [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     timestamp:,
      #     action: nil,
      #     actor: nil,
      #     description: nil,
      #     resource_id: nil,
      #     resource_type: nil,
      #     status: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
        #   # @param email [String, nil]
        #   #
        #   def initialize(id:, name:, email: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class Status < Metronome::Enum
        SUCCESS = :success
        FAILURE = :failure
        PENDING = :pending
      end
    end
  end
end
