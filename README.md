## users テーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| password-confirmation | string  | null: false               |
| last-name             | string  | null: false               |
| first-name            | string  | null: false               |
| last-name-kana        | string  | null: false               |
| first-name-kana       | string  | null: false               |
| birth-date_id         | integer | null: false               |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column                      | Type       | Options                        |
| --------------------------- | ---------- | ------------------------------ |
| item-name                   | string     | null: false                    |
| item-info                   | text       | null: false                    |
| item-category_id            | integer    | null: false                    |
| item-sales-status_id        | integer    | null: false                    |
| item-shipping-fee-status_id | integer    | null: false                    |
| prefecture_id               | integer    | null: false                    |
| item-scheduled-delivery_id  | integer    | null: false                    |
| item-price                  | integer    | null: false                    |
| user                        | references | null: false, foreign_key: true |

## Association

- has_many :orders
- belongs_to :user

## orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

## Association

- belongs_to :user
- belongs_to :item
- has_one :shipping_address

## shipping_address テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal-code     | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |
| addresses       | string     | null: false                    |
| building        | string     | null: true                     |
| phone_unmber    | integer    | null: true                     |
| oeder            | references | null: false, foreign_key: true |

### Association

- belongs_to :order