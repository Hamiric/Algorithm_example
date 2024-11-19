double average(List<int> salary) {

  int maxSalary = salary[0];
  int minSalary = salary[0];
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
