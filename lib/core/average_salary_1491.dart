double average(List<int> salary) {

  int maxSalary = 1000;
  int minSalary = 1000000;
  int sumSalary = 0;
  int idxSalary = salary.length;

  for(int i = 0 ; i < idxSalary ; i ++){
    sumSalary += salary[i];

    if(minSalary > salary[i]){
      minSalary = salary[i];
    }

    if(maxSalary < salary[i]){
      maxSalary = salary[i];
    }
  }

  return (sumSalary - (maxSalary + minSalary)) / (idxSalary - 2);
}
