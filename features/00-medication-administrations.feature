@medication-administrations
Feature: Medication administrations

    Scenario: Correct resourceType
        Given I have a Medication administrations response
        Then the resourceType field will be Bundle
        Then the type field will be searchset

    Scenario: Resources are valid FHIR content
        Given I have a Medication administrations response
        Then the resource parses as valid FHIR DSTU2 content

    Scenario: Results exist
        Given I have a Medication administrations response
        Then there should be at least 1 entry

    Scenario: Resources have ids
        Given I have a Medication administrations response
        And there is at least 1 entry
        Then all resources will have a id field

    Scenario: All references will resolve
        Given I have a Medication administrations response
        And there is at least 1 entry
        Then all references will resolve

    Scenario: All the codes are valid
        Given I have a Medication administrations response
        And there is at least 1 entry
        Then all the codes will be valid
