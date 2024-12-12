# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantEditParams < Metronome::BaseModel
      # @!attribute [rw] id
      #   the ID of the credit grant
      #   @return [String]
      required :id, String

      # @!attribute [rw] credit_grant_type
      #   the updated credit grant type
      #   @return [String]
      optional :credit_grant_type, String

      # @!attribute [rw] expires_at
      #   the updated expiration date for the credit grant
      #   @return [Time]
      optional :expires_at, Time

      # @!attribute [rw] name
      #   the updated name for the credit grant
      #   @return [String]
      optional :name, String
    end
  end
end
