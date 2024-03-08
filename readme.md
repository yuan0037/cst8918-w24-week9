# GitHub Workflow for TerraForm

## Workflow for TerraForm
Please check out the updated action-terraform-verify.yml file under .github/workflows and also check out the actions page for execution history. In the test, I had to update the code in action-terraform-verify.yml in order to capture the errors. If I redeclare the resource group name, terraform fmt will return error but the workflow will still pass. The test I had can be found under "Actions" tab. The problem is when the error happened, the code of:

```FMT_STATUS=$(echo $?)```

The above line will set FMT_STATUS to 0 if there are any error lines by ```terraform fmt```. And the final result of workflow will still be successful. 