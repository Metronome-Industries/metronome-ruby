# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantEditParams < Metronome::BaseModel
      # @!attribute id
      #   the ID of the credit grant
      #
      #   @return [String]
      required :id, String

      # @!attribute credit_grant_type
      #   the updated credit grant type
      #
      #   @return [String]
      optional :credit_grant_type, String

      # @!attribute expires_at
      #   the updated expiration date for the credit grant
      #
      #   @return [Time]
      optional :expires_at, Time

      # @!attribute name
      #   the updated name for the credit grant
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param id [String] the ID of the credit grant
      #   #
      #   # @param credit_grant_type [String, nil] the updated credit grant type
      #   #
      #   # @param expires_at [String, nil] the updated expiration date for the credit grant
      #   #
      #   # @param name [String, nil] the updated name for the credit grant
      #   #
      #   def initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
