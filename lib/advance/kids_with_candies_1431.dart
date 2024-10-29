List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  List<bool> a = [];

  int many = 0;
  for(int i = 0 ; i < candies.length ; i ++){
    if(many < candies[i]){
      many = candies[i];
    }
  }
  
  var pulscandies = candies.map((num)=>num+extraCandies).toList();

  for(int i = 0; i < pulscandies.length; i ++){
    if(pulscandies[i] < many){
      a.add(false);
    }
    else{
      a.add(true);
    }
  }
  
  return a;
}
