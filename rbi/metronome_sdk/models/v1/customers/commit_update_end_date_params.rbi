# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # ID of the commit to update. Only supports "PREPAID" commits.
          sig { returns(String) }
          attr_accessor :commit_id

          # ID of the customer whose commit is to be updated
          sig { returns(String) }
          attr_accessor :customer_id

          # RFC 3339 timestamp indicating when access to the commit will end and it will no
          # longer be possible to draw it down (exclusive). If not provided, the access will
          # not be updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :access_ending_before

          sig { params(access_ending_before: Time).void }
          attr_writer :access_ending_before

          # RFC 3339 timestamp indicating when the commit will stop being invoiced
          # (exclusive). If not provided, the invoice schedule will not be updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :invoices_ending_before

          sig { params(invoices_ending_before: Time).void }
          attr_writer :invoices_ending_before

          sig do
            params(
              commit_id: String,
              customer_id: String,
              access_ending_before: Time,
              invoices_ending_before: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the commit to update. Only supports "PREPAID" commits.
            commit_id:,
            # ID of the customer whose commit is to be updated
            customer_id:,
            # RFC 3339 timestamp indicating when access to the commit will end and it will no
            # longer be possible to draw it down (exclusive). If not provided, the access will
            # not be updated.
            access_ending_before: nil,
            # RFC 3339 timestamp indicating when the commit will stop being invoiced
            # (exclusive). If not provided, the invoice schedule will not be updated.
            invoices_ending_before: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                commit_id: String,
                customer_id: String,
                access_ending_before: Time,
                invoices_ending_before: Time,
                request_options: MetronomeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
