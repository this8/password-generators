-- A Passwordgenerator that can generate random passwords and save them in a file.
-- Require libaries
require "math"

-- Get the random function ready and under control
math.randomseed(os.time()) -- Seed the random function with the time
math.random() math.random() math.random() -- To avoid an error, where the "random" number equals 1 generate 3 numbers first

-- Define ranges the passwords consist of
rangeLetters = {"a", "b", "c" , "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C" , "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
rangeNumbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
rangeSpecials = {".", ",", "-", "#", "+", "^", "°", "*", "'", "_", ":", ";", "~", "<", ">", "|", "/"}

-- Functions for generating a password
function getPassword(lengthOfPassword)	-- Single password generation
	password = ""
	for i=1, lengthOfPassword do
		charType = math.random(3)
		if (charType == 1) then
			charPick = math.random(#rangeLetters)
			password = password .. rangeLetters[charPick]
		elseif (charType == 2) then
			charPick = math.random(#rangeNumbers)
			password = password .. rangeNumbers[charPick]
		else
			charPick = math.random(#rangeSpecials)
			password = password .. rangeSpecials[charPick]
		end
	end
	return password
end

function getPasswords(numberOfPasswords, lengthOfPassword)	-- Generate multiple passwords	
	for i=1, numberOfPasswords do
		print("Save password by the name :")
		purpose = io.read()
		password = getPassword(lengthOfPassword)
		print(i..") "..password.."\n")
		local file,err = io.open("./passwords.txt",'a')

		if file then		--save the password in a file named passwords.txt
			io.output(file)
			io.write(purpose..": ")
			io.write('"'..password..'"'.."\n")
			io.close(file)
		else
			print("error:", err)
		end
	end
end

-- Check and validate user input
function menu()
	commandmode = false
	print("How long shall this password be? A minimum of 12 characters suggested.")
	lengthOfPassword = io.read()

	print("How many passwords do you want?")
	numberOfPasswords = io.read()

	readyCheck(lengthOfPassword, numberOfPasswords, commandmode)
end

function commandline()
	commandmode = true
	lengthOfPassword = arg[1]
	numberOfPasswords = arg[2]
	readyCheck(lengthOfPassword, numberOfPasswords, commandmode)
end

function readyCheck(lengthOfPassword, numberOfPasswords, commandmode)
	factor1 = checkInt(lengthOfPassword)
	factor2 = checkInt(numberOfPasswords)
	if (factor1 and factor2) then
		getPasswords(numberOfPasswords, lengthOfPassword)
	else
		if (commandmode) then
			print("Invalid input detected. Aborting.")
			os.exit()
		else
			print("Invalid input detected. Returning to start.")
			menu()
		end
	end
end

function checkInt(possibleInt)	-- check a variable whether it is int or not
	if (possibleInt == nil or possibleInt == '') then
		return false 
	else
		whitelist = "0123456789"
		for i=1, string.len(possibleInt) do
			if (string.match(whitelist, string.sub(possibleInt, i, i))) then
			else
				return false
			end
		end
		return true
	end
end


-- Main program
if arg[1] then
	commandline()
else
	menu()
end
