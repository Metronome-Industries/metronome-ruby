# typed: strong

module Metronome
  module Models
    module Customers
      class CommitUpdateEndDateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :commit_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(Time)) }
        attr_reader :access_ending_before

        sig { params(access_ending_before: Time).void }
        attr_writer :access_ending_before

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
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          commit_id:,
          customer_id:,
          access_ending_before: nil,
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
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
