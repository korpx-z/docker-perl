set -e 

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** testing docker run - perl *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW hello world - perl: $ANSI_RESET"

docker build . --tag testperl
docker run -i --rm testperl


echo -e "\n $ANSI_GREEN *** TEST COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
