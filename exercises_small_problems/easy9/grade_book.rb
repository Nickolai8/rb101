def get_grade(score1, score2, score3)
  grade = { 9=>'A', 8=>'B', 7=>'C', 6=>'D', }
  avg = [score1,score2,score3].sum/3
  category = avg/10

  grade[category] ? grade[category] : 'F'
end






# input is 3 integers
# output is a letter grade

# all tested avlues are between 0 and 100, none greater than 100.
# scores are to be averaged
# average value determines letter grade








p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"