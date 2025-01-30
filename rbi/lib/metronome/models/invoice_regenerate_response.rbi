# typed: strong

module Metronome
  module Models
    class InvoiceRegenerateResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::InvoiceRegenerateResponse::Data} }

      sig { returns(T.nilable(Metronome::Models::InvoiceRegenerateResponse::Data)) }
      attr_reader :data

      sig { params(data: Metronome::Models::InvoiceRegenerateResponse::Data).void }
      attr_writer :data

      sig { params(data: Metronome::Models::InvoiceRegenerateResponse::Data).void }
      def initialize(data: nil); end

      sig { returns(Metronome::Models::InvoiceRegenerateResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Metronome::Models::InvoiceRegenerateResponse::Data::Shape) }
        def to_h; end
      end
    end
  end
end
