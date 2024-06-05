# Description
This code is like a digital system for handling job candidates' info. It sets rules for candidates to sign up based on their skills, work mode choice, and experience level. To register, candidates need more than 5 skills, a preference for offline work, and at least 3 years of experience. The code uses an enum for work mode and a struct to store candidate details. If a candidate meets these conditions, their info gets stored in the system.

# Getting Started
## Requirement
1. Candidates need to have more than 5 skills to successfully register.
2. Choosing offline work mode is a must for candidates during the registration process.
3. Candidates are expected to have over 3 years of experience to fulfill the registration requirements.
4. If  a candidate meeths these requirement,their details are stored in the system.

#Executing program To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.ethintermediate.sol ). Copy and paste the following code into the file:


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract JobSkill{
    enum Mode {online,offline}
    struct Candidate {
        uint skills;
        Mode workMode; 
        uint exp;
    }
    mapping (address=>Candidate)public candidatesAddr;
    function register(address _applicantAddress, uint _skills, Mode _workMode, uint _exp) public {
        // Condition 1: Skills should be more than 5
        require(_skills> 5, "Skills should be more than 5");
        
        // Condition 2: Work mode should be Offline (1)
        if(_workMode!= Mode.offline){

        revert("Work mode should be Offline");
        }
        
        // Condition 3: Experience should be greater than 3
        assert(_exp > 3);

        candidatesAddr[_applicantAddress]=(Candidate(_skills,_workMode,_exp));
    }
    }



To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile ethintermediate.sol" button.
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Use the code to register candidates.Test the code with different candidate details.Confirm that the code works as expected.

# Author

@Diksha Thakur

# License

This Ethintermediate is licensed under the MIT license



