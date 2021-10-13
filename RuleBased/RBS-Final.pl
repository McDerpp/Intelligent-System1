
cookie(q1,y).



start:-
    write('let us check you cookie...'),nl,
    write('what properties does it have?'),nl,
    write('is it dry,crumble and chalky?'),nl,
    read(Q1),nl,
    write('does it have play-doh texture?'),nl,
    read(Q2),nl,
    write('does it have inconsistent flavor and texture?'),nl,
    read(Q3),nl,
    write('does it burn quickly?'),nl,
    read(Q4),nl,
    write('is it hard and tough?'),nl,
    read(Q5),nl,
    write('does it taste really sweet?'),nl,
    read(Q6),nl,
    write('is it hard on the outside but doughy in the inside?'),nl,
    read(Q7),nl,
    write('does it taste like shortbread?'),nl,
    read(Q8),nl,
    write('did it resulted into toasted flavor?'),
    read(Q9),nl,
    checking(Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9).

checking(Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9):-
    Q1==1,Q2==1,Q3==1,Q4==1,Q5==1,Q6==1,Q7==1,Q8==1,Q9==1,write('Possible problem is YOU!, the Baker!...WHY ARE YOU BAKING IN THE FIRST PLACE?!?!?!');

    Q6==1,Q7==1,Q8==1,write('Possible problem could be: no eggs, not enough sugar or both'):

    Q6==1,Q7==1,write('Problem: NO EGGS!');
    Q8==1,Q7==1,write('problem: Not enough sugar');
    Q9==1,Q1==1,write('Problem: Over-baked');

    Q1==1,Q2==1,write('Possible Problem could be: Baking powder,too much flour or both');
    Q3==1,Q4==1,write('Possible problem could be: Everything is mixed together at once,not
    enough flour or both');
    Q4==1,Q5==1,write('Possible problem could be:Not enough flour, Over-creamed or both');


    Q1==1,write('Problem:BAKING POWDER');
    Q2==1,write('Problem:Too much flour');
    Q3==1,write('Problem:Eveything is mixed together at once');
    Q4==1,write('Problem:Not enough flour');
    Q5==1,write('Problem:Over-creamed');
    Q6==1,write('Possible problem: No eggs');
    Q7==1,write('possible problem:No eggs');
    Q8==1,write('possible problem: not enough sugar');
    Q9==1,write('possible problem:over-baked');
    write('why did u ask then? its perfectly fine...GOOD JOB!')



    .










