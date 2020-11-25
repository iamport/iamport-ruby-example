# ruby-dummy-example

## Preparation

```shell
sudo gem install rails
sudo bundle
```

## Serve

```shell
rails server
```

## Test

### Query payment details

**GET** localhost:3000/payment/[imp_uid]

### Cancel payment

**POST** localhost:3000/payment

**Request body (json example)**

```json
{
   "imp_uid" : "[imp_uid]]",
   "merchant_uid" : "[merchant_uid]"
}

```

