require 'csv'
require './models/transacao'

class Conta
  attr_accessor :numero, :saldo

  def self.setup(file_path)
    @@all = []

    CSV.read(file_path).map do |line|
      @@all << Conta.new(numero: line[0], saldo: line[1].to_i)
    end
  end

  def self.all
    @@all
  end

  def extrato
    transacoes.each do |transacao|
      transacao.processar(self)
    end

    self
  end

  private

  def initialize(campos)
    @numero = campos[:numero]
    @saldo = campos[:saldo]
  end

  def transacoes
    Transacao.all.select{ |transacao| transacao.conta_numero == self.numero }
  end
end
