# typed: strong

module Metronome
  module Models
    class InvoiceRegenerateResponse < Metronome::BaseModel
      sig { returns(T.nilable(Metronome::Models::InvoiceRegenerateResponse::Data)) }
      def data
      end

      sig do
        params(_: Metronome::Models::InvoiceRegenerateResponse::Data).returns(Metronome::Models::InvoiceRegenerateResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: Metronome::Models::InvoiceRegenerateResponse::Data).void }
      def initialize(data: nil)
      end

      sig { override.returns({data: Metronome::Models::InvoiceRegenerateResponse::Data}) }
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
