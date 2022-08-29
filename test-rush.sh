print_result () {
	lines=`wc -l < tmp`
	if [ "$lines" -eq "0" ]; then
		echo " OK"
	else
		echo " ERROR"
		cat tmp
	fi;
}
printf "Testing rush-00 10 11"
./rush00bins/rush-00 10 11 | ../rush-2 | diff <(echo "[rush-00] [10] [11]" ) - > tmp
print_result
printf "Testing rush-01 10 11"
./rush00bins/rush-01 10 11 | ../rush-2 | diff <(echo "[rush-01] [10] [11]" ) - > tmp
print_result
printf "Testing rush-02 10 11"
./rush00bins/rush-02 10 11 | ../rush-2 | diff <(echo "[rush-02] [10] [11]" ) - > tmp
print_result
printf "Testing rush-03 10 11"
./rush00bins/rush-03 10 11 | ../rush-2 | diff <(echo "[rush-03] [10] [11]" ) - > tmp
print_result
printf "Testing rush-04 10 11"
./rush00bins/rush-04 10 11 | ../rush-2 | diff <(echo "[rush-04] [10] [11]" ) - > tmp
print_result
printf "Testing rush-00 1 1"
./rush00bins/rush-00 1 1 | ../rush-2 | diff <(echo "[rush-00] [1] [1]" ) - > tmp
print_result
printf "Testing rush-01 1 1"
./rush00bins/rush-01 1 1 | ../rush-2 | diff <(echo "[rush-01] [1] [1]" ) - > tmp
print_result
printf "Testing rush-02 1 1"
./rush00bins/rush-02 1 1 | ../rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) - > tmp
print_result
printf "Testing rush-03 1 1"
./rush00bins/rush-03 1 1 | ../rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) - > tmp
print_result
printf "Testing rush-04 1 1"
./rush00bins/rush-04 1 1 | ../rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) - > tmp
print_result
printf "Testing rush-00 0 0"
./rush00bins/rush-00 0 0 | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing rush-01 0 0"
./rush00bins/rush-01 0 0 | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing rush-02 0 0"
./rush00bins/rush-02 0 0 | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing rush-03 0 0"
./rush00bins/rush-03 0 0 | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing rush-04 0 0"
./rush00bins/rush-04 0 0 | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing rush-00 2 1"
./rush00bins/rush-00 2 1 | ../rush-2 | diff <(echo "[rush-00] [2] [1]") - > tmp
print_result
printf "Testing rush-00 1 2"
./rush00bins/rush-00 1 2 | ../rush-2 | diff <(echo "[rush-00] [1] [2]") - > tmp
print_result
printf "Testing rush-01 2 1"
./rush00bins/rush-01 2 1 | ../rush-2 | diff <(echo "[rush-01] [2] [1]") - > tmp
print_result
printf "Testing rush-01 1 2"
./rush00bins/rush-01 1 2 | ../rush-2 | diff <(echo "[rush-01] [1] [2]") - > tmp
print_result
printf "Testing rush-02 2 1"
./rush00bins/rush-02 2 1 | ../rush-2 | diff <(echo "[rush-02] [2] [1]") - > tmp
print_result
printf "Testing rush-02 1 2"
./rush00bins/rush-02 1 2 | ../rush-2 | diff <(echo "[rush-02] [1] [2] || [rush-04] [1] [2]") - > tmp
print_result
printf "Testing rush-03 2 1"
./rush00bins/rush-03 2 1 | ../rush-2 | diff <(echo "[rush-03] [2] [1] || [rush-04] [2] [1]") - > tmp
print_result
printf "Testing rush-03 1 2"
./rush00bins/rush-03 1 2 | ../rush-2 | diff <(echo "[rush-03] [1] [2]") - > tmp
print_result
printf "Testing rush-04 2 1"
./rush00bins/rush-04 2 1 | ../rush-2 | diff <(echo "[rush-03] [2] [1] || [rush-04] [2] [1]") - > tmp
print_result
printf "Testing rush-04 1 2"
./rush00bins/rush-04 1 2 | ../rush-2 | diff <(echo "[rush-02] [1] [2] || [rush-04] [1] [2]") - > tmp
print_result
printf "Testing NULL"
printf "" | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing newline only"
echo "" | ../rush-2 | diff <(echo "None") - > tmp
print_result
printf "Testing random string: Ai-je une chance d'avoir plus de 0 ?"
echo "Ai-je une chance d'avoir plus de 0 ?"  | ../rush-2 | diff <(echo "None") - > tmp
print_result
