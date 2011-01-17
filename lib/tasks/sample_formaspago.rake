require 'faker'
namespace :db do
  task :formas_pago => :environment do
    para_formas_pago
  end
end

def para_formas_pago
  FormaPago.create!(:name => "Efectivo")
  FormaPago.create!(:name => "Cheque al dia")
  FormaPago.create!(:name => "Cheque a fecha")
  FormaPago.create!(:name => "Tarjeta a Credito")
end

