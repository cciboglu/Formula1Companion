# Introcourse Project App for the iPraktikum - Caner Ciboglu

To pass the introcourse, you need to create your own unique iOS app (based on SwiftUI).

There are no requirements regarding the functions of your app, so you can get creative.
However, we provide you with Non-Functional Requirements (NFR) that your app needs to fulfill.

After each day of learning new Swift and SwiftUI concepts, these NFRs may change, or new NFRs get added.


## Submission procedure

You get a **personal repository** on Bitbucket to work on your app.

Once you implemented a new feature into your app, you need to create a Pull Request (PR) to merge your changes from the feature branch into your main branch.

Your tutor will review your changes and either request changes or approves the PR. 

If your PR got approved, you also need to merge it!

### Deadline: **19.04.2023 12:00**
Until the deadline all of your PRs **need to be merged** and your final app **needs to fulfill** all of the requested NFRs!

---

## Problem Statement (max. 500 words)

TODO: Add your problem statement here. In case you do not remember take a look at the EIST slides again ;)

Formula one companion app:
As a F1 fan, I want an app to follow the latest results of F1. A Formula One season takes place per year and contains teams (called Constructors) with two drivers each. This App should show the results of each Grand Prix (qualification and race) in 2023. Plus the standings of constructors and drivers. In addition to that, it should present some information about drivers, circuits and teams. 

## Terminology
Driver: Competitor of one race
Constructor: Teams in F1. Every team contains 2 drivers.
Grand Prix: Weekend race tournament with qualification and race. 2023, there will be 23 Grand Prix
Season: Year with Grand Prix tournamens and standings of drivers and constructors

## Requirements
TODO: Document the requirements you fulfilled with your app. Discuss them with your tutor.
- Show first a main menu with the top five drivers and the opportunity to navigate between results and informations about drivers and teams and standings
- Show standings of drivers in 2023 with their points and wins in a table
- Show standings of constructors in 2023 with their points and wins in a table
- Show an overview of grand prix sessions of the current season. Per tap on one race, more informations where provided
- See all relevant informations (race name, date, time, place) of future races.
- See all results and informations (place, time and name) of past races in 2023 with a table containing the standings of the drivers in each race.
- Show some general informations about drivers like age, name, team and nationality
- Show some general informations about constructors like nationality and drivers


## Analysis

TODO: Include an analysis object model. You can use [draw.io](https://draw.io) or [apollon](https://apollon.ase.cit.tum.de) to create it.
images/UMLCLassDiagram.png

## System Design

TODO: Include a system design overview describing your application.
images/ComponentDiagram.png

## Product Backlog

TODO: Add a product backlog and don't forget to update it with each PR

Design screens
- AllRacesScreen
- MainMenu
- AllConstructorsAndDriverss
- RaceScreen
- DriverInformationScreen
- ConstructorInformationScreen

Fetch data from api connection
UML Diagrams
Optimize README.md
implement classes



