require 'csv'
require './models/conta'

class Agencia
  def initialize(contas_path, transacoes_path)
    Conta.setup contas_path
    puts transacoes_path
  end

  def saldos
    Conta.all.map { |conta| p conta }
  end
end
