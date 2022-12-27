# Deploy Snowflake environment via terraform file through Jenkins
## What is it?
This project automatically deploys code when a push is made to a repository. It takes terraform code from github and sends it to Jenkins where the resources are deployed to Snowflake.
## Why should I use this?
This method helps software developmet, you continuously build, test and deploy code changes. This helps to automate multiple proceses. Each change submitted to an application, even to development branches, is built and tested automatically and continuously. These tests ensure the changes pass all tests, guidelines, and code compliance standards you established for your application.
## How to deploy?
### Create separate user that uses password authentication and grant neccecary roles
In Snowflake console add user and give neccecary with following commands:
1. CREATE USER "tf-snow" PASSWORD='examplepassword' DEFAULT_ROLE=PUBLIC MUST_CHANGE_PASSWORD=FALSE;
2. GRANT ROLE SYSADMIN TO USER "tf-snow";
3. GRANT ROLE SECURITYADMIN TO USER "tf-snow";
4. Get the account locator and region
5. SELECT current_account() as YOUR_ACCOUNT_LOCATOR, current_region() as YOUR_SNOWFLAKE_REGION_ID;
### Jenkins configuration
1. Build docker image for Jenkins
2. Run the container
3. Add neccecary plugins
4. Inside Jenkins add new task "Multibranch pipeline"
5. Specify github link
6. Make changes to Jenkinsfile
7. Add neccecary credentials in "Manage Jenkins" > "Manage credentials"
### Github configuration
1. Add neccecary branches 
2. In "settings" > "webhooks", add webhook url http://<JenkinsURL>/github-webhook/