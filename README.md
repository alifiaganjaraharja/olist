# [Olist] - E-commerce Funnel Analysis
By Alifia Ganjaraharja

This repository contains a data analysis project that utilizes SQL to examine customer behavior on an e-commerce website. This project utilizes a real public dataset from the Brazilian e-commerce company Olist. 

## Project Overview
This project utilizes a real public dataset from the Brazilian e-commerce company, Olist. It's great for practicing more complex joins and subqueries.
1. **Goals**: Understand the customer journey and identify opportunities to improve sales and customer satisfaction.

   **Sample Questions to Answer**:
    - Order Statuses: *What is the breakdown of orders by their status (e.g., delivered, shipped, canceled)?*
    - Payment Methods: *What are the most popular payment methods? Does this vary by the order value?*
    - Geographic Performance: *Which states have the highest number of customers and the highest total sales?*
    - Delivery Performance: *What is the average time between a customer placing an order and the order being delivered? Are we meeting our delivery estimates?*
    - Product Categories: *Which product categories generate the most revenue?*
      
2. **Dataset**: The "Brazilian E-commerce Dataset by Olist" is available on Kaggle. You can access it [here](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce). It's a rich dataset comprising multiple tables that cover orders, products, customers, and reviews.

3. **Tools Used**: SQLite and Looker

## Result and Findings

Question 1: Order Statuses - What is the breakdown of orders by their status (e.g., delivered, shipped, canceled)?

| **Order Status**            | **Total**        |
|-----------------------------|------------------|
| Delivered                   | 96478            |
| Shipped                     | 1107             |
| Canceled                    | 625              |
| Unavailable                 | 609              |
| Invoiced                    | 314              |
| Processing                  | 301              |
| Created                     | 5                |
| Approved                    | 2                |

See visualization [here](https://github.com/alifiaganjaraharja/olist/blob/main/%5BOlist%5D-Question1.pdf)

Question 2: Payment Methods - What are the most popular payment methods? Does this vary by the order value?

| **Order Value Tier**  | **Payment Type** | **Number of Orders**   |
|-----------------------|------------------|------------------------|
| Large                 | Boleto           | 4365                   |
| Large                 | Credit Card      | 20867                  |
| Large                 | Debit Card       | 332                    |
| Large                 | Voucher          | 397                    |
| Medium                | Boleto           | 4955                   |
| Medium                | Credit Card      | 20019                  |
| Medium                | Debit Card       | 343                    |
| Medium                | Voucher          | 498                    |
| Small                 | Boleto           | 10464                  |
| Small                 | Credit Card      | 35909                  |
| Small                 | Debit Card       | 854                    |
| Small                 | not defined      | 3                      |
| Small                 | Voucher          | 4880                   |

See visualization [here](https://github.com/alifiaganjaraharja/olist/blob/main/%5BOlist%5D-Question2.pdf)

Question 3: Geographic Performance - Which states have the highest number of customers and the highest total sales?

| **Customer State**  | **Number of Customer** | **Total Sales (IN R$)**  |
|---------------------|------------------------|--------------------------|
| SP                  | 40301                  | R$ 5,998,227             |
| RJ                  | 12384                  | R$ 2,144,380             |
| MG                  | 11259                  | R$ 1,872,257             |
| RS                  | 5277                   | R$ 890,899               |
| PR                  | 4882                   | R$ 811,156               |
| SC                  | 3534                   | R$ 623,086               |
| BA                  | 3277                   | R$ 616,646               |
| DF                  | 2075                   | R$ 355,141               |
| GO                  | 1852                   | R$ 350,092               |
| ES                  | 1964                   | R$ 325,968               |

See visualization [here](https://github.com/alifiaganjaraharja/olist/blob/main/%5BOlist%5D%20-%20Question3.pdf)

Question 4: Delivery Performance - What is the average time between a customer placing an order and the order being delivered? Are we meeting our delivery estimates?

| **Average Delivery Time**  | **Average Days Early** | **On Time Delivery Percentage**   |
|----------------------------|------------------------|-----------------------------------|
| 12                         | 11                     | 91.89%                            |

Question 5: Product Categories - Which product categories generate the most revenue?

| **Product Category Name**  | **Product Category Name English** | **Total Sales (In R$)**   |
|----------------------------|-----------------------------------|--------------------------|
| cama_mesa_banho            | bed_bath_table                    | R$ 11,115                |
| beleza_saude               | health_beauty                     | R$ 9,670                 |
| esporte_lazer              | sports_leisure                    | R$ 8,641                 |
| moveis_decoracao           | furniture_decor                   | R$ 8,334                 |
| informatica_acessorios     | cimputers_accessories             | R$ 7,827                 |
| utilidades_domesticas      | housewares                        | R$ 6,964                 |
| relogios_presentes         | watches_gifts                     | R$ 5,991                 |
| telefonia                  | telephony                         | R$ 4,545                 |
| ferramentas_jardim         | garden_tools                      | R$ 4,347                 |
| automotivo                 | auto                              | R$ 4,235                 |

See visualization [here](https://github.com/alifiaganjaraharja/olist/blob/main/%5BOlist%5D-Question5.pdf)
