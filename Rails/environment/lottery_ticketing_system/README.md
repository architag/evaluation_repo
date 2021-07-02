# README

## Problem Statement
lottery ticket booking system:

    - features
        - user login, signup, password reset
            - user should have auth-tokens
            - must upload his photo while signup
        - verified user can book a lottery between 12AM and 11:30PM
            - on successful purchase user is mailed his ticket details, txn details and a virtual image of his lottery
        - There are 2 types of lottery tickets
            - Cash prize on winning
            - Utilities on winning
        - everyday 3 random lottery numbers are selected and 3 users associated get notified via mail b/w 11:30PM and 12AM
        - user registeration can happen on web-ui and there must be a set of APIs to support above features (grape?)
        - a 1st price lottery winner cannot win again for sometime(say 3 months)
        - users can pay for their lottery tickets(no need for PG integration but txns must be stored)
        

## MODEL SCHEMA
**User Model**

    has_one :image, as: :imageable
    has_many :purchases
    has_many :tickets, through: :purchases
    name (string)
    email (string)
    last_won_on (datetime)


**Ticket Model**

    has_one :image, as: :imageable
    has_one :purchase
    has_one :customer, through: :purchase
    user_id (integer)
    is_valid (boolean)
    expiration_date (datetime)
    prize_type (integer) (using enums)
    position_won (integer)
    receipt_no (string)


**Purchase Model**

    belongs_to :customer
    belongs_to :ticket
    customer_id (integer)
    ticket_id (integer)
    status (integer) (using enums)
    

**Image Model**

    has_one_attached :image
    imageable (references), polymorphic: true
