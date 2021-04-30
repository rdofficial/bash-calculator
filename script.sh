# bash-calculator
#
# Author : Rishav Das (https://github.com/rdofficial)
# Started on : April 29, 2021
#

# Printing the main menu on the screen in loop in order for the user to stick his mind into it, unless he chooses the option to quit
while true; do
	# Displaying the script heading
	clear
	echo -e "\t[ Bash-Calculator ]\n[ Author : Rishav Das (https://github.com/rdofficial) ]"

	# Displaying the menu options on the console screen
	echo -e "\n[1] Addition\n[2] Subtraction\n[3] Multiplication\n[4] Division\n[5] Find factorial (n!)\n[6] Exponential calculation\n[7] Check even or odd number\n[8] Check prime or composite number\n[0] Exit\n"

	# Asking the user for entering any option
	read -p "Enter your choice : " choice
	echo -e ""

	# Executing the arithmetic operation as per user choice
	if [[ $choice == "1" ]]; then
		# If the user chooses the option for addition, then we continue to serve the function

		# Asking the user to enter the numbers
		echo -e "[ Note : Enter the numbers below, and separate two numbers using spaces ]"
		read -p "Enter the numbers : " numbers

		# Adding all the numbers
		result=0
		for number in $numbers; do
			result=$(($result+$number))
		done

		# Displaying the result of the addition on the console screen
		echo -e "\nThe result of the addition is : ${result}"
	elif [[ $choice == "2" ]]; then
		# If the user chooses the option for subtraction, then we continue to serve the function

		# Asking the user to enter the numbers
		read -p "Enter the first number : " number1
		read -p "Enter the second number : " number2

		# Calculating the result and displaying the result on the console screen
		result=$(($number1-$number2))
		echo -e "\nThe result of the subtraction is : ${result}"
	elif [[ $choice == "3" ]]; then
		# If the user chooses the option for multiplication, then we continue to serve the function

		# Asking the user to enter the numbers
                echo -e "[ Note : Enter the numbers below, and separate two numbers using spaces ]"
                read -p "Enter the numbers : " numbers

                # Multiplying all the numbers
                result=1
                for number in $numbers; do
                        result=$(($result*$number))
                done

                # Displaying the result of the multiplication on the console screen
                echo -e "\nThe result of the multiplication is : ${result}"
	elif [[ $choice == "4" ]]; then
		# If the user chooses the option for division, then we continue to serve the function

		# Asking the user to enter the numbers
		read -p "Enter the first number : " number1
		read -p "Enter the second number : " number2

		# Calculating the result and then displaying the result on the console screen
		result=$(($number1/$number2))
		echo -e "\nThe result of the division : ${result}"
	elif [[ $choice == "5" ]]; then
		# If the user chooses the option for finding the factorial, then we continue to serve the function

		# Asking the user to enter the number
		read -p "Enter the number : " number

		# Calculating the factorial
		result=1
		for i in $( seq 1 $number ); do
			result=$(($result*$i))
		done

		# Displaying the result of the factorial on the console screen
		echo -e "\nThe factorial of ${number} is : ${result}"
	elif [[ $choice == "6" ]]; then
		# If the user chooses the option for exponential calculation, then we continue to serve the function

		# Asking the user to enter the number and the power value
		read -p "Enter the number : " number
		read -p "Enter the power : " power

		# Calculating the result and then displaying it on the console screen
		result=$(($number**$power))
		echo -e "\nThe result of the exponential calculation is : ${result}"
		echo -e "[ In other words, ${number} raised to the power ${power} is ${result} ]"
	elif [[ $choice == "7" ]]; then
		# If the user chooses the option for checking wheter the number is even or odd, then we continue to serve the function

		# Asking the user to enter the number
		read -p "Enter the number : " number

		# Checking the result and displaying it on the console screen
		if [[ $(($number%2)) == 0 ]]; then
			# If the user entered number is an even number

			echo -e "\nThe specified number ${number} is an even number"
		else
			# If the user entered number is an odd number

			echo -e "\nThe specified number ${number} is an odd number"
		fi
	elif [[ $choice == "8" ]]; then
		# If the user chooses the option for checking wheter the number is prime or composite, then we continue to serve the function

		# Asking the user to enter the number
		read -p "Enter the number : " number

		# Checking wheter the user entered number is a prime number or a composite number
		noOfFactors=0
		for i in $( seq 1 $number ); do
			if [[ $(($number%$i)) == 0 ]]; then
				noOfFactors=$(($noOfFactors+1))
			fi
		done

		# Checking if there are more than two factors or not
		if [[ $noOfFactors > 2 ]]; then
			# If there are more than two factors of the user entered number, then the number is a composite number

			echo -e "\nThe specified number ${number} is a composite number"
		else
			# If the user entered number has only 2 factors, then the number is a prime number

			echo -e "\nThe specified number ${number} is a prime number"
		fi
	elif [[ $choice == "0" ]]; then
		# If the user chooses the option for exiting the script, then we exit the script

		exit
	else
		# If the user entered an option which is not available

		echo -e "[ Error : No such options available ]"
	fi

	read -p "Press enter key to continue..."
done
