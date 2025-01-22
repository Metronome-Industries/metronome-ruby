# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantEditParams < Metronome::BaseModel
      # @!attribute id
      #   the ID of the credit grant
      #
      #   @return [String]
      required :id, String

      # @!attribute [r] credit_grant_type
      #   the updated credit grant type
      #
      #   @return [String, nil]
      optional :credit_grant_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :credit_grant_type

      # @!attribute [r] expires_at
      #   the updated expiration date for the credit grant
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :expires_at

      # @!attribute [r] name
      #   the updated name for the credit grant
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!parse
      #   # @param id [String]
      #   # @param credit_grant_type [String]
      #   # @param expires_at [String]
      #   # @param name [String]
      #   #
      #   def initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
