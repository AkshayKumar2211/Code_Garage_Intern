$users =[
    {
           "username" => "Default\n",
            "password"=> "Default@123\n",
            "accountNo"=> "defaultaccount",
            "balance" => 0  
    }
]
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
        $users.push(@hash)
      
        puts "------------------------------------------------ Account created successfully ----------------------------------------------------------------"
    end

    def userInfos
        return @hash
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
            return false
        else    
            @balance-=amount
            puts "Amount transefer successfully................."
            puts "Your balance #{@balance}"
            return true
        end
    end

end


    $loginUserDetail={}

   def loginFromHash (name,password)
     size=$users.length
     puts "the name and password default user #{name}  #{password}"
     


     i=0
     while i<size
        if ($users[i]["username"]==name && $users[i]["password"]==password)
            puts "User have been login successfully ....."

            loginUser=
            {

                "name" => $users[i]["username"],
                "password"=>$users[i]["password"],
                "accountNo"=> $users[i]["accountNo"],
                "balance" => $users[i]["balance"]
            }
            return loginUser
        end
            i+=1
    end   
    
    puts "User with this name does not exist please try again ....."
     
    end

    
    # for Deposite in loginUser Account....
    def loginUserAccountDeposite(loginUser)
        size=$users.length

        for a in $users
            if (a["username"]==loginUser["name"])
                a["balance"]+=loginUser["balance"]
                puts "Money Deposite successfully "
                puts "Details of the User Account #{loginUser}"
                return true
            end

        end

        puts "Error while deposite money Please try again ...."

    end


    #for Withdraw 

    def loginUserAccountWithdraw(loginUser,amount)
        
        size=$users.length

        for a in $users
            if (a["username"]==loginUser["name"])
                # a["balance"]+=loginUser["balance"]
                # puts "Money Deposite successfully "
                  if(amount>loginUser["balance"]|| loginUser["balance"]==0)
                 puts "-----------------------------------------------Insufficient balance in the account--------------------------------------------------------"
                return false
                else
                loginUser["balance"]-=amount
                a["balance"]-=amount
                puts "--------------------------------------------------------Withdraw successfull--------------------------------------------------------------"
                puts "--------------------------------------------------------Remaining balance #{loginUser["balance"]}----------------------------------------------------"
                return true
            end
                puts "Details of the User Account #{loginUser}"
                return true
            end

        end
    
    end

    # for transfer
    def loginUserTransfer(loginUser, amount)

    for u in $users
        puts "Valid Account number for transfer ::: #{u["accountNo"]}"
    end

    puts "Enter one of the above accountNo to transfer money :::::"
    account = gets.strip


    for u in $users
        if u["username"] == loginUser["name"]

            if amount > u["balance"] || u["balance"] == 0
                puts "---------------- Insufficient balance ----------------"
                return false
            end

            u["balance"] -= amount
            loginUser["balance"] = u["balance"]
        end
    end


    for u in $users
        if u["accountNo"] == account
            u["balance"] += amount
            puts "--------------- Transfer successful ----------------"
            puts "Remaining balance #{loginUser["balance"]}"
            return true
        end
    end

    puts "Account number not found"
    return false
end




puts "----------------------------------------Welcome to Bank of Robbers----------------------------------------"

isValidUsername=/^[0-9A-Za-z ]{6,16}$/
isPassWordValidate=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/




while true
 
    puts "----------------------------------------Press 1 for signup------------------------------------------------\n
    ----------------------------------------------Press 2 for login--------------------------------------------------\n
    ----------------------------------------------Press 3 for exit----------------------------------------------------"
    chioce=gets.to_i 

     mainCon=false
    case chioce
    when 1
        puts:"-----------------------------------------Welcome to the signup page----------------------------------------"  
        puts:"Enter your name ::"
        name=gets();
        
        while(!(name.match(isValidUsername)))
            puts:"Enter a name with more than 6 character .... "
            name=gets()
        end
        
        puts "Enter your password ::"
        password=gets()
        while(!(password.match(isPassWordValidate)))
            puts "Enter a strong password please::"
            password=gets()
        end
        
        defaultUser=Bank.new(name,password)
        userData=defaultUser.userInfos
        puts "Heres your account details:::"
        defaultUser.showBankDetail()
        puts  "-----------------------------------welcome to the login page------------------------------------------"
        chioce=2
    
    # when 2 
    #     while true
    #         puts "Please enter your name :::"
    #         name=gets()
    #         puts "Please enter your password :::"
    #         password=gets()
            
    #         defaultUser=Bank.new(name,password);
            
            
    #         con=defaultUser.login(name,password)
            
    #         if(con)
    #             break
    #         end
    #     end

    when 2
        while true
        puts "Please enter your name :::"
        name=gets()
        puts "Please enter your password :::"
        password=gets()

        con=loginFromHash(name ,password)
        puts "The login user details are here"
        if(con)
            $loginUserDetail=con
            puts "The login User Details.... #{$loginUserDetail}"
            mainCon=true
            break
        end

    end


    
    when 4
        while true
            puts "Please enter your name :::"
            name=gets()
            puts "Please enter your password :::"
            password=gets()
            
            con=false
            
            con=defaultUser.login(name,password)
            puts "Login User Details......."
            
            if(con)
                break
            end
        end
    
    
    when 3 
        exit
    else
        puts "please enter a valid input value >>>>>>>>"

    end

    if(mainCon)
        break
    end
    
end #first while end here ......



#for use in logout case
def reload

  isValidUsername=/^[0-9A-Za-z ]{6,16}$/
  isPassWordValidate=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/

  while true
 
    puts "----------------------------------------Press 1 for signup------------------------------------------------\n
    ----------------------------------------------Press 2 for login--------------------------------------------------\n
    ----------------------------------------------Press 3 for exit----------------------------------------------------"
    chioce=gets.to_i 

     mainCon=false
    case chioce
    when 1
        puts:"-----------------------------------------Welcome to the signup page----------------------------------------"  
        puts:"Enter your name ::"
        name=gets();
        
        while(!(name.match(isValidUsername)))
            puts:"Enter a name with more than 6 character .... "
            name=gets()
        end
        
        puts "Enter your password ::"
        password=gets()
        while(!(password.match(isPassWordValidate)))
            puts "Enter a strong password please::"
            password=gets()
        end
        
        defaultUser=Bank.new(name,password)
        userData=defaultUser.userInfos
        puts "Heres your account details:::"
        defaultUser.showBankDetail()
        puts  "-----------------------------------welcome to the login page------------------------------------------"
        chioce=2
    
    # when 2 
    #     while true
    #         puts "Please enter your name :::"
    #         name=gets()
    #         puts "Please enter your password :::"
    #         password=gets()
            
    #         defaultUser=Bank.new(name,password);
            
            
    #         con=defaultUser.login(name,password)
            
    #         if(con)
    #             break
    #         end
    #     end

    when 2
        while true
        puts "Please enter your name :::"
        name=gets()
        puts "Please enter your password :::"
        password=gets()

        con=loginFromHash(name ,password)
        puts "The value of the con is ..... #{con}"
        if(con)
            $loginUserDetail=con
            puts "The login User Details.... #{$loginUserDetail}"
            mainCon=true
            break
        end

    end


    
    when 4
        while true
            puts "Please enter your name :::"
            name=gets()
            puts "Please enter your password :::"
            password=gets()
            
            con=false
            
            con=defaultUser.login(name,password)
            puts "Login User Details......."
            
            if(con)
                break
            end
        end
    
    
    when 3 
        exit
    else
        puts "please enter a valid input value >>>>>>>>"

    end

    if(mainCon)
        break
    end
    
end  



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

            $loginUserDetail["balance"]+=amount

            loginUserAccountDeposite($loginUserDetail)

        
        # defaultUser.deposite(amount)

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

            loginUserAccountWithdraw($loginUserDetail,withdraw)
            # defaultUser.withdraw(withdraw)

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

           

          

        #     transferss=Bank.new("DefaultAccount","transfer@123");

        #    con= defaultUser.transferMoney(transfer)

           if( loginUserTransfer($loginUserDetail,transfer))
            puts "Money transfer suceessfully"
           end
        when 4
            puts "----------------------------------------Welcome to account detail page---------------------------------------"
            # defaultUser.showBankDetail()
            puts "------------------------------------------------User Details-------------------------------------------------"
            puts "-------------name :: #{$loginUserDetail["name"]}--------------"
            puts "-------------Account NO:: #{$loginUserDetail["accountNo"]}-----------"
            puts "-------------Balance ::  #{$loginUserDetail["balance"]}-----------"

        when 5
    #         puts "You have been log out user have been logout ...."

    #         puts  "-----------------------------------welcome to the login page------------------------------------------"
    #            while true
    #          puts "Please enter your name :::"
    #         name=gets()
    #         puts "Please enter your password :::"
    #         password=gets()

    #         con=loginFromHash(name ,password)
    #             puts "The login user details are here"
    #         if(con)
    #             loginUserDetail=con
    #             puts "The login User Details.... #{loginUserDetail}"
    #         break
    #     end
    # end
        puts "----------------------------------User have been logout---------------------------------------------"
        puts "-------------------------------Welcome to the Bank of Robbers------------------------------------"
        reload()
        puts "After the reload function....."
         puts "The loginUSerDetail #{$loginUserDetail}"
        when 6
            puts "---------------------------------------Your session ended you exit the website---------------------------------"
            exit
        # when 7
        #     puts "---------------------------------------Here are the balance of the accoun--------------------------------------"
        #     defaultUser.checkBalance()

        else
            puts "Please enter a valid option "

    end
end