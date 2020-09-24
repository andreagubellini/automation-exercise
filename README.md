# Automation exercise

## What is being tested

This exercise aims to test http://automationpractice.com/ user registration and adding a specific product to the shopping cart.

## Architecture

This suite follows PageObjectModel design pattern: you can find a class (in this case a `.resource file`) for each page used by the tests containing all the required locators and informations for these specific tests to work.

Inside `src/` you can find:

* **tools.resource**: this file exposes different useful functions used by the suite. These keywords/functions are not strictly product/business related.

* **common.resource**: this file imports resources such as libraries, variable files, resource files and exposes them along with suite-level variables.

* **data/users.yml**: this variable file is used by `main.robot` to register a user on the website. The informations may be modified as long as necessary. Note: email is generated randomly inside `tools.resource` and then exposed as a suite variable to the suite scope.

* **keywordwrappers/main.resource**: this file wraps different keywords/functions to higher level keywords. This step is necessary to have better readable BDD tests inside `atests/`.

Testcase files can be found inside `atests/`

## How to run

### locally

Firstly you need to have either *geckodriver* or *chromedriver* based on the browser given as the value for the variable `${browser}` inside the suite.

Once the driver is set, install the dependencies:

```
pip install -r requirements.txt
```

When the dependencies are installed you can run all tests by executing:

```
robot atests/
```

or execute a single test

```
robot atests/main.robot
```

### with Docker

In this example I am using this docker image: https://github.com/andreagubellini/robotframework-docker (be sure to give a star :P) 

which can be found on this dockerhub link: https://hub.docker.com/r/agubellini/robotframework-docker

pull the image and then execute `run.sh` which is available inside the project's root folder.

```
docker pull agubellini/robotframework-docker
```

The outputs of the test execution can be found inside the generated folder named `output/`