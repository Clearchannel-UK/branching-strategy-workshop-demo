Feature: Work Instruction Creation
  As a maintenance leader
  I want to be able to create work instructions
  So my operatives are aware of the work they are required to finish

  Scenario: Valid new work instructions should be created
    Given   I create a valid work instruction
    When    I submit the work instruction
    Then    The work instruction is created

  Scenario: Work instructions with a completion by date in the past should be rejected
    Given   I create a work instruction with a completion by date in the past
    When    I submit the work instruction
    Then    I should receive a validation error, indicating the completion by date in the past error

  Scenario: Work instructions without a completion by date should be rejected
    Given   I create a work instruction and do not specify the completion by date
    When    I submit the work instruction
    Then    I should receive a validation error, indicating the completion by missing error

  Scenario: Work instructions without an instruction type should be rejected
    Given   I create a work instruction and do not specify the instruction type
    When    I submit the work instruction
    Then    I should receive a validation error, indicating the instruction type error

  Scenario: Work instructions without an address should be rejected
    Given   I create a work instruction and do not specify the address
    When    I submit the work instruction
    Then    I should receive a validation error, indicating the address error

  Scenario: Work instructions without an assignee should be rejected
    Given   I create a work instruction and do not specify the assignee
    When    I submit the work instruction
    Then    I should receive a validation error, indicating the assignee error
