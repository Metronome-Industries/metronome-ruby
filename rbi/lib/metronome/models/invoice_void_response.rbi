# typed: strong

module Metronome
  module Models
    class InvoiceVoidResponse < Metronome::BaseModel
      sig { returns(T.nilable(Metronome::Models::InvoiceVoidResponse::Data)) }
      def data
      end

      sig do
        params(_: Metronome::Models::InvoiceVoidResponse::Data)
          .returns(Metronome::Models::InvoiceVoidResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: Metronome::Models::InvoiceVoidResponse::Data).void }
      def initialize(data: nil)
      end

      sig { override.returns({data: Metronome::Models::InvoiceVoidResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

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
