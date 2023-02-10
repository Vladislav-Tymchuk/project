create table Category
(
category_id int primary key identity(1,1),
category_name varchar(50) not null
)

create table Product 
(
product_id int primary key identity(1,1),
category_id int not null,
product_name varchar(50) not null,
product_description varchar(127),
product_price int not null,
foreign key (category_id) references Category(category_id)
)

create table Customer
(
customer_id int primary key identity(1,1),
customer_name varchar(17) not null,
customer_email varchar(127) unique
)

create table Review 
(
product_id int,
customer_id int,
review_text varchar(527) null,
rating int not null,
foreign key (product_id) references Product(product_id),
foreign key (customer_id) references Customer(customer_id),
primary key (product_id, customer_id)
)