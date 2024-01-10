# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Using terminal, clone the repo and `cd` into the folder
- Run the following commands
  - `cds build`
  - `cds watch`
- Access https://localhost:4004 to see data for "Orders" and "OrderItems"

## Test Steps

- The services should be running at https://localhost:4004 (or any other available port)
- From VS Code, Install "REST Client for Visual Studio Code"
- Go to the `OrderManagement > test` folder
- Access either test-orders.http or test-orderitems.http
- Click 'Send Request' link to do CRUD operations on orders and orderitems respectively
  - Note: change Order IDs or OrderItem IDs as required
  
## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
