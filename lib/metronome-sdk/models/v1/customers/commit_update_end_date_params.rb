# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitUpdateEndDateParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

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

          # @!attribute [r] access_ending_before
          #   RFC 3339 timestamp indicating when access to the commit will end and it will no
          #     longer be possible to draw it down (exclusive). If not provided, the access will
          #     not be updated.
          #
          #   @return [Time, nil]
          optional :access_ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :access_ending_before

          # @!attribute [r] invoices_ending_before
          #   RFC 3339 timestamp indicating when the commit will stop being invoiced
          #     (exclusive). If not provided, the invoice schedule will not be updated.
          #
          #   @return [Time, nil]
          optional :invoices_ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :invoices_ending_before

          # @!parse
          #   # @param commit_id [String]
          #   # @param customer_id [String]
          #   # @param access_ending_before [Time]
          #   # @param invoices_ending_before [Time]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(commit_id:, customer_id:, access_ending_before: nil, invoices_ending_before: nil, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
