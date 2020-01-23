class User < ApplicationRecord
    has_many :receivers, through: :receiver_conversations, source: :receiver
    has_many :receiver_conversations, foreign_key: :sender_id, class_name: "Conversation"
  
    has_many :senders, through: :sender_conversations, source: :sender
    has_many :sender_conversations, foreign_key: :receiver_id, class_name: "Conversation" 
    has_secure_password
    validates :username, uniqueness: true
    validates :username, presence: true

  end