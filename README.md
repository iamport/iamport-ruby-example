# iamport-ruby-example

> [!WARNING]
> **This repository is deprecated and no longer maintained.**
>
> Please refer to the official PortOne documentation below.
>
> - **PortOne V2 (recommended)**: [REST API](https://developers.portone.io/api/rest-v2?v=v2) · [Server SDK](https://developers.portone.io/sdk/ko/v2-server-sdk/readme?v=v2)
> - **PortOne V1 (formerly I'mport)**: [V1 REST API](https://developers.portone.io/api/rest-v1?v=v1)

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
   "imp_uid" : "[imp_uid]",
   "merchant_uid" : "[merchant_uid]",
   "reason" : "[환불사유]",
   "cancel_request_amount" : [환불요청금액]
}

```

