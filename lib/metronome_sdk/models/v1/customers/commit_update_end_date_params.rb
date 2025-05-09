# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#update_end_date
        class CommitUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

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
          #   RFC 3339 timestamp indicating when access to the commit will end and it will no
          #   longer be possible to draw it down (exclusive). If not provided, the access will
          #   not be updated.
          #
          #   @return [Time, nil]
          optional :access_ending_before, Time

          # @!attribute invoices_ending_before
          #   RFC 3339 timestamp indicating when the commit will stop being invoiced
          #   (exclusive). If not provided, the invoice schedule will not be updated.
          #
          #   @return [Time, nil]
          optional :invoices_ending_before, Time

          # @!method initialize(commit_id:, customer_id:, access_ending_before: nil, invoices_ending_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateParams} for more
          #   details.
          #
          #   @param commit_id [String] ID of the commit to update. Only supports "PREPAID" commits.
          #
          #   @param customer_id [String] ID of the customer whose commit is to be updated
          #
          #   @param access_ending_before [Time] RFC 3339 timestamp indicating when access to the commit will end and it will no
          #
          #   @param invoices_ending_before [Time] RFC 3339 timestamp indicating when the commit will stop being invoiced (exclusiv
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
