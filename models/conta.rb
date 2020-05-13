require 'csv'

class Conta
  attr_accessor :numero, :saldo

  def self.setup(file_path)
    @@all = []
    CSV.read(file_path).each do |line|
      @@all << Conta.new(numero: line[0], saldo: line[1].to_i)
    end

    puts @@all
  end

  private

  def initialize(campos)
    @numero = campos[:numero]
    @saldo = campos[:saldo]
  end
end
