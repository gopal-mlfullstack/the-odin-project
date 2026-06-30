

// get computer choice 
function getComputerChoice(){
    let choices = ["rock", "paper", "scissors"];
    
    // use random to get random index 0 to 2 
    let choice = Math.floor(Math.random() * 3);
    return choices[choice];
}



// get user choice 

function getUserChoice(){
    let choice = prompt("Enter your choice(r, p, s): ");

    // user choice 
    let user_choice = {
        "r": "rock",
        "p": "paper",
        "s": "scissors",
    };

    return user_choice[choice];
}





function playGame(){
    

    // store computer and user choice 
    let computer = getComputerChoice();
    let user = getUserChoice();
    
    

    // // check equality just to see/observe deeply
    // console.log(`Computer: ${computer}, User: ${user} | Computer == User (${user == computer}) | Computer === User (${computer === user})`)
    

    // show user and computer choice 
    console.log(`Computer choose: ${computer}, You choose: ${user}`)
    
    

    // user error handling 
    if ( user !== "rock" && user !== "paper" && user !== "scissors"){
        return `'${user}' Invalid choice!\nChoose/type r, p, s `
    }
    
    // determine the winner 
    if (computer === user){
        return `It's Draw 🤝`
    }
    if ((computer === "scissors" && user === "paper") || (computer === "rock" && user === "scissors") || (computer === "paper" && user === "rock")) {
        return `Computer Wins 🖥️`
    } else {
        return `You won 🥶`
    }




}

console.log(playGame())

