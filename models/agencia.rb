require 'csv'
require './models/conta'
require './models/transacao'

class Agencia
  def initialize(contas_path, transacoes_path)
    Conta.setup contas_path
    Transacao.setup transacoes_path
  end

  def saldos
    Conta.all.map { |conta| p conta.extrato }
  end
end
