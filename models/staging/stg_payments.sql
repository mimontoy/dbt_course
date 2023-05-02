with source as (

    select * from raw.stripe.payment

),

staged as (

    select 
        ID as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method, 
        status, 
        amount/100.0 as amount,
        created as created_date,
        _batched_at 

    from source
)

select * from staged