bool lemonadeChange(List<int> bills) {
  
  int fiveInHand = 0;
  int tenInHand = 0;
  int twentyInHand = 0;

  int idxBills = bills.length;

  // 손님은 5, 10, 20 달러를 내민다.
  int i = 0;
  while(i < idxBills){

    // 손님이 5달러를 내밀때
    if(bills[i] == 5){
      fiveInHand += 1;
    }

    // 손님이 10달러를 내밀때
    if(bills[i] == 10){
      // 5달러 거스름
      if(fiveInHand >= 1){
        tenInHand += 1;
        fiveInHand -= 1;
      } else{
        return false;
      }
    }

    // 손님이 20달러를 내밀때
    if(bills[i] == 20){

      // 10달러 + 5달러를 거스를때 (10달러 재고가 있을때)
      if(tenInHand >= 1){
        if(fiveInHand >= 1){
          twentyInHand += 1;
          tenInHand -= 1;
          fiveInHand -= 1;
        } else {
          return false;
        }
      } else { // 10달러 재고가 없을때 (5달러 3개로 거스를때)
        if(fiveInHand >= 3){
          twentyInHand += 1;
          fiveInHand -= 3;
        } else {
          return false;
        }
      }
    }

    i ++;
  }

  print("5달러 : $fiveInHand, 10달러 : $tenInHand, 20달러 : $twentyInHand");

  return true;
}
