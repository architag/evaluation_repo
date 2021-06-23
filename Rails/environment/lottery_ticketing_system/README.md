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

    has_one :user_image
    has_many :tickets
    name (string)
    email (string)
    password_digest (string)
    last_won_on (date)


**Ticket Model**

    has_one :ticket_image
    belongs_to :user
    user_id (integer)
    valid (boolean)
    expiration_date (date)
    prize_type (string)
    receipt_no (string)


**Image Model**

    type (string)
    has_one_attached :image


**Ticket_Image Model < Image Model**

    belongs_to :ticket
    ticket_id (integer)


**User_Image Model < Image Model**

    belongs_to :user
    user_id (integer)
