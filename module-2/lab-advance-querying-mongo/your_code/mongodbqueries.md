## Solutions

1.
FILTER {name:"Babelgum"}
PROJECT {name:1}

2.
FILTER {number_of_employees:{$gt:5000}} 
SORT {number_of_employees:-1}
LIMIT 20

3.
FILTER {$and:[{founded_year:{$gt:1999}}, {founded_year:{$lt:2006}}]}
PROJECT {name:1, founded_year:1}

4.
FILTER {$and:[{"ipo.valuation_amount":{$gt:100000000}}, {founded_year:{$lt:2010}}]}
PROJECT {name:1, ipo:1}

5.
FILTER {$and:[{number_of_employees:{$lt:1000}}, {founded_year:{$lt:2005}}]}
SORT {number_of_employees:-1}
LIMIT 10

6.
FILTER {partners:{$exists:false}}

7.
FILTER {category_code:{$type:"null"}}

8.
FILTER {$and:[{number_of_employees:{$gte:100}}, {number_of_employees:{$lt:1000}}]}
PROJECT {name:1, number_of_employees:1}

9.
FILTER {"ipo.valuation_amount":{$exists:true}}
SORT {"ipo.valuation_amount":-1}

10.
FILTER {number_of_employees:{$exists:true}}
SORT {number_of_employees:-1}
LIMIT 10

11.
FILTER {founded_month:{$gt:6}}
LIMIT 1000

12.
FILTER {$and:[{founded_year:{$lt:2000}}, {"acquisition.price_amount":{$gt:10000000}}]}

13.
FILTER {"acquisition.acquired_year":{$gt:2010}}
PROJECT {name:1, acquisition:1}
SORT {"acquisition.price_amount":-1}

14.
FILTER {founded_year:{$not:{$type:"null"}}}
PROJECT {name:1, founded_year:1}
SORT {founded_year:1}

15.
FILTER {founded_day:{$lte:7}}
SORT {"acquisition.price_amount":-1}
LIMIT 10

16.
FILTER {$and:[{category_code:"web"}, {number_of_employees:{$gt:4000}}]}
SORT {number_of_employees:1}

17.
FILTER {$and:[{"acquisition.price_amount":{$gt:10000000}}, {"acquisition.price_currency_code":"EUR"}]}

18.
FILTER {"acquisition.acquired_month":{$lte:3}}
PROJECT {name:1, acquisition:1}
LIMIT 10

19.
FILTER {$and:[{founded_year:{$gte:2000}}, {founded_year:{$lte:2010}}, {"acquisition.acquired_year":{$gte:2011}}]}

20.
FILTER {$subtract:["$deadpooled_year","$founded_year"]:{$lt:3}}
# NO PERMITE HACER LA BÚSQUEDA, NO HE SABIDO COMO RESOLVERLO


