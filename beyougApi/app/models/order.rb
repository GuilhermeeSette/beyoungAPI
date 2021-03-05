class Order < ApplicationRecord
  has_many :items

  validates :client_name, :email, :cpf, :cep, :delivery_value, :value, presence: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 


  
  validates :cpf,
  format: { with: /^\d{3}\.\d{3}\.\d{3}\-\d{2}$/, message: "CPF inválido", multiline: true  }


  validates :cep,
  format: { with: /^\d{5}-?\d{3}$/, message: "CEP inválido", multiline: true  }



  
end
