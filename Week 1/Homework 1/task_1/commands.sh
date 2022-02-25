# 1.A.1 Counting the number of lines
wc -l data.dat

# 1.A.2 Counting the lines which contain the words "dolor" or "dalor"
grep "dolor\|dalor" -c data.dat

# 1.A.3 Counting the total number of words
wc -w data.dat

# 1.A.4 Counting the number of words which start with "mol"
grep -o " mol*" data.dat | wc -w