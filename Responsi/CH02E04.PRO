/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates % adalah variable yang telah di tentukan dalam suatu pernyataan/fakta yang ada
  male(symbol) - nondeterm (o)
  female(symbol) - nondeterm (o)
  parent(symbol,symbol) - nondeterm (o,o)

clauses % clauses(berisi semua fakta dan aturan)
  male(bill).
  male(joe).

  female(sue).
  female(tammy).

  parent(bill,joe).
  parent(sue,joe).
  parent(joe,tammy).

goal % GOAL(tujuan akhir-nya)
  parent(Parent,_). %hasil yang menyatakan siapa saja yang menjadi parent, dimana tanda (,) adalah dan dan (_) adalah enter
  			%jelas bahwa hasil goalnya adalah 3 solusi yaitu Parent=bill ,Parent=sue, Parent=joe. jelas bahwa ada 3 parent
			%dimana bill adalah parent-nya joe, dan sue adalah parent-nya joe, dan joe adalah parent-nya tammy. 
			%sehingga tammy bukanlah parent karna tdk memiliki child/tdk sebagai parent siapapun dari fakta di atas.