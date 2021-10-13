stock(chicken,6).
stock(pork,6).
stock(mutton,0).
stock(beef,0).


prices(chicken,45).
prices(pork,50).
prices(mutton,55).
prices(beef,60).

start:-
    write('what do you want to do? order/price/stocks').

stocks:-
    write('stock check on?'),nl,
    read(Input),nl,
    stock(Input,Output),nl,
    write('stock for '),
    write(Input),
    write(' is '),
    write(Output).

prices:-
    write('price check on?'),nl,
    read(Input),nl,
    prices(Input,Output),nl,
    write('price for '),
    write(Input),
    write(' is '),
    write(Output).

order:-
    write('what do you want to order?'),nl,
    read(Ordered),
    stock(Ordered,Instock),
    write('how many kilos do you want to order?:'),nl,
    read(Kilos),
    write('input amount of money:'),
    read(Money),
    confirmation(Ordered,Instock,Kilos,Money).

confirmation(Ordered,Instock,Kilos,Money):-
    Instock<Kilos,write('not enough stock');
    Instock>Kilos,prices(Ordered,Price),Total is Kilos*Price,
    buy(Total,Money,Ordered).

buy(Total,Money,Ordered):-Total>Money,nl,nl, write('Insufficient funds'),nl,
    write('Fund: '),write(Money),nl,
    write('total Price of '), write(Ordered), write(' is '), write(Total),nl


   ;Total<Money,nl,nl,write('Successfully purchased '),write(Ordered),nl,
   write('Fund was: '),write(Money),nl,
    write('Total price amount of: '),write(Ordered),write(' is '),write(Total),nl,
    Change is Money-Total, write('change is: '),write(Change).


