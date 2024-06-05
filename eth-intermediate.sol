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
