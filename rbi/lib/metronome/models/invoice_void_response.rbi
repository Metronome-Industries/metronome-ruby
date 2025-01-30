# typed: strong

module Metronome
  module Models
    class InvoiceVoidResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::InvoiceVoidResponse::Data} }

      sig { returns(T.nilable(Metronome::Models::InvoiceVoidResponse::Data)) }
      attr_reader :data

      sig { params(data: Metronome::Models::InvoiceVoidResponse::Data).void }
      attr_writer :data

      sig { params(data: Metronome::Models::InvoiceVoidResponse::Data).void }
      def initialize(data: nil); end

      sig { returns(Metronome::Models::InvoiceVoidResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Metronome::Models::InvoiceVoidResponse::Data::Shape) }
        def to_h; end
      end
    end
  end
end
