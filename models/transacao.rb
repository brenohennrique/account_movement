require 'csv'

class Transacao
  attr_accessor :conta_numero, :valor

  def self.setup(file_path)
    @@all = []
    CSV.read(file_path).map do |line|
      @@all << Transacao.new(conta_numero: line[0], valor: line[1].to_i)
    end
  end

  def self.all
    @@all
  end

  def processar(conta)
    conta.saldo
  end

  private

  def initialize(campos)
    @conta_numero = campos[:conta_numero]
    @valor = campos[:valor]
  end
end
