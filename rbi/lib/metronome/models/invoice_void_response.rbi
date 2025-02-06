# typed: strong

module Metronome
  module Models
    class InvoiceVoidResponse < Metronome::BaseModel
      sig { returns(T.nilable(Metronome::Models::InvoiceVoidResponse::Data)) }
      attr_reader :data

      sig { params(data: Metronome::Models::InvoiceVoidResponse::Data).void }
      attr_writer :data

      sig { params(data: Metronome::Models::InvoiceVoidResponse::Data).void }
      def initialize(data: nil)
      end

      sig { override.returns({data: Metronome::Models::InvoiceVoidResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end
    end
  end
end
