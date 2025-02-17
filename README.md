# GLACIATION Integration Tests

The repository contains basic integration tests for GLACIATION. The tests are created via Postman. 

You can make Jenkins run the tests on periodic basis. 
1. Install Jenkins via official Helm chart
2. Install NodeJS plugin (Manage Jenkins -> Plugins)
3. Configure the plugin (Manage Jenkins -> Tools -> NodeJS installations)
4. Sign in Jenkins and get a token (Jenkins Admin -> Account -> Security)
5. Call [restore-job.sh](restore-job.sh) for every test. Example:
    ```
   ./restore-job.sh trade-off-service-tests admin <token> trade-off-service jenkins.integration
   ```

