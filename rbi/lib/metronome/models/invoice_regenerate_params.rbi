# typed: strong

module Metronome
  module Models
    class InvoiceRegenerateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({id: String}, Metronome::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String, request_options: Metronome::RequestOpts).void }
      def initialize(id:, request_options: {}); end

      sig { returns(Metronome::Models::InvoiceRegenerateParams::Shape) }
      def to_h; end
    end
  end
end
