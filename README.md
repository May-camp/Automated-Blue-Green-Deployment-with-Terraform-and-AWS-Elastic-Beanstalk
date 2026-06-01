Automated Blue-Green Deployment with Terraform and AWS Elastic Beanstalk
This project demonstrates how to automate a Blue-Green Deployment infrastructure using Terraform and AWS Elastic Beanstalk. This strategy allows for zero-downtime updates by deploying a new version (Green) alongside the current production version (Blue) before shifting traffic.

Step-by-Step Deployment Guide
Step 1: Create the Project Workspace
Initialize a single home directory to hold all project components and launch it directly within your local IDE development workspace.

Step 2: Prepare Application Source Code
Build two distinct versions of your application code to mimic a live rolling upgrade cycle:

Version 1 (Blue): A basic HTML home page representing the live stable production application environment.

Version 2 (Green): An updated HTML layout containing new staged interface changes and feature enhancements ready for verification testing.

Step 3: Package Application Artifacts via Terminal
Navigate into each separate application build directory using your terminal. Compress the source files into standalone zip distribution packages, outputting them backward into the root directory so they sit right alongside your core configuration blueprints.

Step 4: Write Configuration Declarations
Organize your automation logic cleanly across dedicated system sheets:

Provider Logic (provider.tf): Establishes the required cloud target connections and default region configurations.

Base Core Setup (main.tf): Provisions an isolated S3 storage bucket to hold system deployment objects and initializes the logical parent application wrapper container.

Asset Tracking (app_version.tf): Coordinates uploading both zip packages directly to your storage bucket and registers them as separate, independent deployable app versions.

Environment Provisioning (environments.tf): Declares twin isolated environments running the Docker stack. Both elements spin up their own load balancers, configuration groups, and scaling engines automatically.

Step 5: Infrastructure Orchestration Commands
Using native automation terminal tools, initialize your working directory to pull in backend cloud hooks. Run system maps to safely preview the resource blocks that will be generated, and then apply the configurations to stand up the dual environments in your cloud space.

Step 6: Performing the Blue-Green Routing Swap
Once the provisioning phase completes, the system generates two individual public endpoint domains—one for your active Blue production stack and one for your Green staging layout.

After running integration quality checks on the updated Green endpoint to verify system behavior, execute an environment URL swap directly from the system console or routing manager. This instantly points incoming end-user traffic over to the Green servers, completing the release with zero application downtime.

For production readiness, the local state file would be migrated to an AWS S3 remote backend with DynamoDB state locking (implemented in my previous infrastructure projects).

Diagram for the project!

<img width="1408" height="768" alt="diagram io" src="https://github.com/user-attachments/assets/a6ec5bde-6aa6-4cb1-95d4-1f46aaf054a0" />


