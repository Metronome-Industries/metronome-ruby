# frozen_string_literal: true

module Metronome
  class CursorPage
    # @return [String]
    attr_accessor :next_page_

    # @return [Array<Object>]
    attr_accessor :data

    # @private
    #
    # @param model [Object]
    # @param raw_data [Hash{Symbol => Object}]
    # @param response [Net::HTTPResponse]
    # @param client [Metronome::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    def initialize(client:, model:, req:, opts:, response:, raw_data:)
      @next_page_ = raw_data[:next_page]
      @data = raw_data[:data]&.map { |row| model.coerce(row) }
      @client = client
      @req = req
      @opts = opts
    end

    # @return [Boolean]
    def next_page?
      !next_page_.nil?
    end

    # @raise [Metronome::HTTP::Error]
    # @return [Metronome::CursorPage]
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end

      req = Metronome::Util.deep_merge(@req, {query: {next_page: next_page_}})
      @client.request(req, @opts)
    end

    # @param blk [Proc]
    #
    # @return [nil]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.data.each { |e| blk.call(e) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [Enumerator]
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} next_page_=#{next_page_.inspect} data=#{data.inspect}>"
    end
  end
end
