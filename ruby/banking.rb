
class Bank 

    def initialize(name,password)
        @userName=name
        @userPassword=password
        @accountNumber= ""
        i=0
        s=['a','b','c','d','e','f','g','h','i','1','2','3','4','5','6','7']
        while i<16
            @accountNumber+=s[Random.rand(16)]
            i+=1
        end
        @balance=0
        @hash ={
            "username" => @userName,
            "password"=> @userPassword,
            "accountNo"=> @accountNumber,
            "balance" => @balance
        }

        puts "------------------------------------------------ Account created successfully ----------------------------------------------------------------"
    end


    def login (name ,password)
        puts "Enter username #{name} and password #{password}"
        if (@hash["username"]==name &&  @hash["password"]==password)
            puts "User login successfully ,Welcome #{name}"
            return true
        else
            puts "-------------------------------------------- Username or password is wrong please try again ----------------------------------------------";
            return false
        end
    end


    def showBankDetail 
        puts "Name : #{@userName}"
        puts "Account Number : #{@hash["accountNo"]}"
        puts "Balance : #{@balance}"
    end


    def withdraw(amount)
        if(amount>@balance || @balance==0)
            puts "-----------------------------------------------Insufficient balance in the account--------------------------------------------------------"
            return false
        else
            @balance-=amount
            puts "--------------------------------------------------------Withdraw successfull--------------------------------------------------------------"
            puts "--------------------------------------------------------Remaining balance #{@balance}----------------------------------------------------"
            return true
        end

    end



    def deposite(amount)
        puts "Amount tp deposite"
        @balance+=amount
        puts "-------------------------------------------Amount successfully deposite in your bank account-------------------------------------------------- \n
        ---------------------------------------------------------------Balance : #{@balance}----------------------------------------------------------------"

    end


    def checkBalance
        puts "--------------------------------------------------------Balance :::::: #{@balance}------------------------------------------------------------"
    end

 
    def  transferMoney (amount)
        if(amount > @balance || @balance==0)
            puts "-----------------------------------------Insufficient Balance in the account please deposite some money-----------------------------------"
        else    
            @balance-=amount
            puts "Amount transefer successfully................."
        end
    end

end



puts "----------------------------------------Welcome to Bank of Robbers----------------------------------------"


while true
 
    puts "----------------------------------------Press 1 for signup------------------------------------------------\n
    ----------------------------------------------Press 2 for exit----------------------------------------------------"
    # ----------------------------------------------Press 2 for login--------------------------------------------------\n
    chioce=gets.to_i  
    if(chioce>=1 && chioce<=2)
        break
    end
    puts "please enter a valid"

end

if chioce==1
    puts:"-----------------------------------------Welcome to the signup page----------------------------------------"
        puts:"Enter your name ::"
        name=gets();
        
        puts "Enter your password ::"
        password=gets()
        account1=Bank.new(name,password)
        puts "Heres your account details:::"
        account1.showBankDetail()
        puts  "-----------------------------------welcome to the login page------------------------------------------"
        chioce=3
end

if chioce==3
    while true
        puts "Please enter your name :::"
        name=gets()
        puts "Please enter your password :::"
        password=gets()

        con=account1.login(name,password)
        if(con)
            break
        end
    end
end

if chioce==2
    exit
end





while true
    puts "Heres the main menu of you:::"

    puts "-------------------------------------------Press 1 to deposite money---------------------------------------- 
    \n   --------------------------------------------Press 2 to withdraw money---------------------------------------- \n
         --------------------------------------------Press 3 to transfer money---------------------------------------- \n
         ------------------------------------------Press 4 for Check Account Details----------------------------------- \n
         --------------------------------------------Press 5 to logout------------------------------------------------- \n
         ------------------------------------------Press 6 to exit from banking server----------------------------------- "

    ch=gets.to_i

    case ch
        when 1
            puts "-----------------------------------welcome to the deposite page--------------------------------------"
            
            puts "Please Enter the amount to depoiste ....."

            amount=gets()  

            amount=amount.to_f

            while (amount <= 0)
            puts "Please enter amount greater than zero and valid amount ......."
            amount=gets();
            amount=amount.to_f
            end
            
        
        account1.deposite(amount)

        when 2
            puts "----------------------------------Welcome to the withdraw amount page------------------------------------"
            puts "Please enter the amount to withdraw ..."

            withdraw=gets();
            withdraw=withdraw.to_f;

            while (withdraw <= 0)
            puts "Please enter amount greater than zero and valid amount ......."
            withdraw=gets();
            withdraw=withdraw.to_f
            end

            account1.withdraw(withdraw)

        when 3
            puts "--------------------------------------Welcome to transfer money page--------------------------------------"
            puts "Enter the amount to transfer ::"

            transfer=gets()
            transfer=transfer.to_f

            while (transfer <= 0)
            puts "Please enter amount greater than zero and valid amount ......."
            transfer=gets();
            transfer=transfer.to_f
            end

            puts "Enter transfer account number::::"
            n=gets()

            account1.transferMoney(transfer)

        when 4
            puts "----------------------------------------Welcome to account detail page---------------------------------------"
            account1.showBankDetail()

        when 5
            puts "You have been log out user have been logout ...."

            puts  "-----------------------------------welcome to the login page------------------------------------------"
               while true
             puts "Please enter your name :::"
            name=gets()
            puts "Please enter your password :::"
            password=gets()

            con=account1.login(name,password)
            if(con)
             break
           end
    end
        when 6
            puts "---------------------------------------Your session ended you exit the website---------------------------------"
            exit
        when 7
            puts "---------------------------------------Here are the balance of the accoun--------------------------------------"
            account1.checkBalance()

        else
            puts "Please enter a valid option "

    end
end