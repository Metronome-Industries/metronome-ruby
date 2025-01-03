# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitUpdateEndDateParams < Metronome::BaseModel
        # @!attribute commit_id
        #   ID of the commit to update. Only supports "PREPAID" commits.
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute customer_id
        #   ID of the customer whose commit is to be updated
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute access_ending_before
        #   RFC 3339 timestamp indicating when access to the commit will end and it will no longer be possible to draw it down (exclusive). If not provided, the access will not be updated.
        #
        #   @return [Time]
        optional :access_ending_before, Time

        # @!attribute invoices_ending_before
        #   RFC 3339 timestamp indicating when the commit will stop being invoiced (exclusive). If not provided, the invoice schedule will not be updated.
        #
        #   @return [Time]
        optional :invoices_ending_before, Time

        # @!parse
        #   # @param commit_id [String] ID of the commit to update. Only supports "PREPAID" commits.
        #   #
        #   # @param customer_id [String] ID of the customer whose commit is to be updated
        #   #
        #   # @param access_ending_before [String] RFC 3339 timestamp indicating when access to the commit will end and it will no
        #   #   longer be possible to draw it down (exclusive). If not provided, the access will
        #   #   not be updated.
        #   #
        #   # @param invoices_ending_before [String] RFC 3339 timestamp indicating when the commit will stop being invoiced
        #   #   (exclusive). If not provided, the invoice schedule will not be updated.
        #   #
        #   def initialize(commit_id:, customer_id:, access_ending_before: nil, invoices_ending_before: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
