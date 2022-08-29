printf "Testing rush-00 10 11"
./rush00bins/rush-00 10 11 | ./rush-2 | diff <(echo "[rush-00] [10] [11]" ) -
printf "\nTesting rush-01 10 11"
./rush00bins/rush-01 10 11 | ./rush-2 | diff <(echo "[rush-01] [10] [11]" ) -
printf "\nTesting rush-02 10 11"
./rush00bins/rush-02 10 11 | ./rush-2 | diff <(echo "[rush-02] [10] [11]" ) -
printf "\nTesting rush-03 10 11"
./rush00bins/rush-03 10 11 | ./rush-2 | diff <(echo "[rush-03] [10] [11]" ) -
printf "\nTesting rush-04 10 11"
./rush00bins/rush-04 10 11 | ./rush-2 | diff <(echo "[rush-04] [10] [11]" ) -
printf "\nTesting rush-00 1 1"
./rush00bins/rush-00 1 1 | ./rush-2 | diff <(echo "[rush-00] [1] [1]" ) -
printf "\nTesting rush-01 1 1"
./rush00bins/rush-01 1 1 | ./rush-2 | diff <(echo "[rush-01] [1] [1]" ) -
printf "\nTesting rush-02 1 1"
./rush00bins/rush-02 1 1 | ./rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) -
printf "\nTesting rush-03 1 1"
./rush00bins/rush-03 1 1 | ./rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) -
printf "\nTesting rush-04 1 1"
./rush00bins/rush-04 1 1 | ./rush-2 | diff <(echo "[rush-02] [1] [1] || [rush-03] [1] [1] || [rush-04] [1] [1]" ) -
printf "\nTesting rush-00 0 0"
./rush00bins/rush-00 0 0 | ./rush-2 | diff <(echo "None") -
printf "\nTesting rush-01 0 0"
./rush00bins/rush-01 0 0 | ./rush-2 | diff <(echo "None") -
printf "\nTesting rush-02 0 0"
./rush00bins/rush-02 0 0 | ./rush-2 | diff <(echo "None") -
printf "\nTesting rush-03 0 0"
./rush00bins/rush-03 0 0 | ./rush-2 | diff <(echo "None") -
printf "\nTesting rush-04 0 0"
./rush00bins/rush-04 0 0 | ./rush-2 | diff <(echo "None") -
printf "\nTesting rush-00 2 1"
./rush00bins/rush-00 2 1 | ./rush-2 | diff <(echo "[rush-00] [2] [1]") - 
printf "\nTesting rush-00 1 2"
./rush00bins/rush-00 1 2 | ./rush-2 | diff <(echo "[rush-00] [1] [2]") - 
printf "\nTesting rush-01 2 1"
./rush00bins/rush-01 2 1 | ./rush-2 | diff <(echo "[rush-01] [2] [1]") - 
printf "\nTesting rush-01 1 2"
./rush00bins/rush-01 1 2 | ./rush-2 | diff <(echo "[rush-01] [1] [2]") - 
printf "\nTesting rush-02 2 1"
./rush00bins/rush-02 2 1 | ./rush-2 | diff <(echo "[rush-02] [2] [1]") - 
printf "\nTesting rush-02 1 2"
./rush00bins/rush-02 1 2 | ./rush-2 | diff <(echo "[rush-02] [1] [2] || [rush-04] [1] [2]") - 
printf "\nTesting rush-03 2 1"
./rush00bins/rush-03 2 1 | ./rush-2 | diff <(echo "[rush-03] [2] [1] || [rush-04] [2] [1]") - 
printf "\nTesting rush-03 1 2"
./rush00bins/rush-03 1 2 | ./rush-2 | diff <(echo "[rush-03] [1] [2]") - 
printf "\nTesting rush-04 2 1"
./rush00bins/rush-04 2 1 | ./rush-2 | diff <(echo "[rush-03] [2] [1] || [rush-04] [2] [1]") - 
printf "\nTesting rush-04 1 2"
./rush00bins/rush-04 1 2 | ./rush-2 | diff <(echo "[rush-02] [1] [2] || [rush-04] [1] [2]") - 
printf "\nTesting NULL"
printf "" | ./rush-2 | diff <(echo "None") -
printf "\nTesting newline only"
echo "" | ./rush-2 | diff <(echo "None") -
printf "\nTesting random string: Ai-je une chance d'avoir plus de 0 ?"
echo "Ai-je une chance d'avoir plus de 0 ?"  | ./rush-2 | diff <(echo "None") - 
printf "\n"
