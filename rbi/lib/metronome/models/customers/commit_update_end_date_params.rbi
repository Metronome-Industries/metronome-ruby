# typed: strong

module Metronome
  module Models
    module Customers
      class CommitUpdateEndDateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              commit_id: String,
              customer_id: String,
              access_ending_before: Time,
              invoices_ending_before: Time
            },
            Metronome::RequestParameters::Shape
          )
        end

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
            request_options: Metronome::RequestOpts
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

        sig { returns(Metronome::Models::Customers::CommitUpdateEndDateParams::Shape) }
        def to_h; end
      end
    end
  end
end
