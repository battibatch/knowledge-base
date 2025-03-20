# Continuous Delivery

In the era of DevOps and agile development, delivering software quickly, reliably, and efficiently has become a necessity. Continuous Delivery (CD) is a powerful practice that allows development teams to automatically prepare their code for release to production. When combined with Continuous Integration (CI), Continuous Delivery can drastically reduce the time it takes to deliver high-quality features and updates to users. This article explores the concept of CD, its benefits, the tools involved, and how it works in modern development pipelines.


## What is Continuous Delivery (CD)?

**Continuous Delivery (CD)** is a software development practice in which code changes are automatically prepared for a production release after passing through a series of tests and quality checks. CD builds on the foundation of **Continuous Integration (CI)** by automating the process of moving code from a development environment to a production-like environment, where it is tested and verified. While Continuous Deployment takes this further by automatically deploying to production, CD stops just short of this and ensures that the application is always ready for deployment at the click of a button.

The primary goal of CD is to ensure that software can be reliably released at any time. This practice reduces manual intervention, making deployments less risky and more predictable. By automating the testing, building, and staging process, teams can focus on writing code and delivering value to users, rather than worrying about manual deployments.

## How Does Continuous Delivery Work?

Continuous Delivery builds on top of CI and typically follows these key steps:

1. **Continuous Integration**: Developers commit code to a shared repository, where the CI pipeline automatically builds, runs tests, and verifies the integrity of the application. This step ensures that the code is integrated frequently and is always in a working state.

2. **Automated Testing**: After CI ensures the basic integrity of the code, CD pipelines take it a step further by running more extensive automated tests, including integration tests, end-to-end tests, and performance tests. This ensures that the code is not only functional but also meets quality standards. Sometimes the code needs to be deployed to an environment for this testing to take place

3. **Environment Staging**: The code is deployed to a staging environment, which closely mirrors the production environment. This staging environment is used to conduct further testing, such as user acceptance testing (UAT) or manual QA checks.

4. **Approval and Release**: Once the code passes all tests and checks, it is deemed ready for production. In CD, this step typically requires a manual approval to deploy the release, although the application is always in a state where it *could* be deployed.


## Key Benefits of Continuous Delivery

Implementing Continuous Delivery provides a wide range of benefits, from improved efficiency to increased confidence in the deployment process.

### 1. **Faster Time to Market**
CD allows development teams to deliver new features and bug fixes to users more quickly. By automating the process of preparing code for release, CD reduces the time and effort required to deploy changes. This is especially valuable for teams practicing agile development, where frequent iterations are essential.

### 2. **Reduced Deployment Risk**
Manual deployments can be error-prone, especially if they involve complex, multi-step processes. CD automates much of the deployment preparation, reducing the chance of human error. By continuously testing code in environments that mimic production, CD ensures that issues are detected early, minimizing the risk of failures in production.

### 3. **Higher Quality Releases**
CD pipelines include extensive automated testing and quality checks, ensuring that only code that meets a high standard is ever deployed. This not only increases the reliability of releases but also reduces the number of bugs or regressions that reach production.

### 4. **Improved Team Productivity**
Automating deployment processes frees developers from manual, repetitive tasks like preparing builds or setting up environments. This allows teams to focus more on delivering features and less on operational overhead. Additionally, since code is always in a deployable state, teams can release updates more confidently and without bottlenecks.

### 5. **Enhanced Collaboration**
CD encourages collaboration between development and operations teams. By automating the process from development to deployment, CD fosters a culture of shared responsibility, where both developers and operations teams work together to maintain the integrity and stability of the codebase.


## Best Practices for Continuous Delivery

To make the most of Continuous Delivery, it’s important to follow these best practices:

### 1. **Automate Everything**
The more you automate, the less prone the process is to human error. Automate everything, from testing and building to deployment. This ensures consistency across deployments and reduces the chances of manual mistakes.

### 2. **Deploy to Production-Like Environments**
Use staging or pre-production environments that are as similar as possible to your production environment. This allows you to catch issues early in the CD process, ensuring that what works in staging will also work in production.

### 3. **Use Feature Toggles**
Feature toggles (or feature flags) allow you to deploy code that is not yet fully ready or visible to end users. This way, you can push changes to production and control when features are activated, reducing the need for large, risky releases.

### 4. **Monitor Everything**
Monitoring is crucial in CD pipelines. You need visibility into the pipeline, from the health of tests and builds to the performance of applications in staging environments. Continuous monitoring ensures that issues are detected early and that releases are always stable.

### 5. **Ensure Rollback Capability**
No matter how robust your testing is, there’s always a chance something could go wrong in production. Having the ability to easily and quickly roll back to a previous, stable version is essential for maintaining uptime and minimizing disruption.


## Continuous Delivery vs. Continuous Deployment

It’s important to distinguish between Continuous Delivery and Continuous Deployment, as they are often used interchangeably but have key differences:

- **Continuous Delivery (CD)**: Code is automatically tested and prepared for production, but deployment requires manual approval or a conscious decision by a human operator. The system is always ready to deploy but doesn't automatically push changes to production without oversight.

- **Continuous Deployment**: This takes automation one step further. Code is automatically deployed to production as soon as it passes all tests and checks, without any manual intervention. Continuous Deployment is often suitable for mature DevOps teams with robust monitoring and testing in place.


## CD in the DevOps Workflow

Continuous Delivery is a core component of the broader **DevOps** methodology. In the DevOps workflow, CD plays a vital role in automating the delivery process, ensuring that software is always in a ready-to-deploy state. Combined with practices like Continuous Integration (CI), Infrastructure as Code (IaC), Configuration Management (CM), and automated monitoring, CD enables a seamless and scalable deployment pipeline.

By reducing the gap between development and operations, CD facilitates faster, more reliable software delivery while minimizing the risks associated with manual deployments.

---

### Conclusion

Continuous Delivery (CD) is a critical practice for modern software development teams. It allows teams to automate the testing and deployment preparation process, ensuring that code is always in a deployable state. By reducing deployment risks, increasing team productivity, and enabling faster releases, CD empowers organizations to deliver high-quality software at a rapid pace.

Adopting Continuous Delivery can require a significant cultural and technical shift, but the benefits — from reduced deployment times to higher software quality — make it a worthwhile investment. As part of a comprehensive DevOps strategy, CD helps drive faster feedback loops, increased collaboration, and better outcomes for development teams and end users alike.


---
**Ignore below this line please for now**


## GitOps
### Scenario 1: One Application/Repo w/ GitOps

A single application is defined in a single repo.

#### Sprint Strategy
* Sprints are 2 weeks
* There is a release at the end of the sprint

#### Branching Strategy

feature/bugfix/hotfix -> develop -> release/vX.X.X -> main
* A feature or bugfix branch is created based on a ticket
* Features and bugfix branches are merged into develop
* Once all changes from a sprint  are merged into develop, a release branch is created from develop
* After the release branch has been deployed to production, it is merged into main

#### Deployment Strategy
There are 4 envs for the application: dev, qa, stage, prod
* A feature, bugfix, or develop branch shall only be deployed to dev, qa environments only
* release and main shall only be deployed to dev, qa, stage, prod environments
* Main is not deployed, only release branch
* During the sprint, devs can deploy their feature branches to the dev environment
* Develop is deployed automatically to qa and stage when a PR is merged to it
* When a release branch is created, it is deployed to stage automatically; with approval then deploys to prod

During the sprint, all the features/bug fixes are created, developed, tested in dev/qa envs,, and merged into develop. depending on the release planning, a release branch may be created/deployed to prod  mid sprint and/or at the end of the sprint. When a release branch is created, it is deployed to staging, and once approved, deployed to prod.


### Scenario 2: N services/repo for 1 App w/ GitOps
This example has a single application repo, that contains directories for N services that make up the application. All 4 services need to be deployable independently or together based on changes.

```
app-repo
├── service1
│   ├── README.md
│   ├── envs
│   │   ├── dev.yaml
│   │   ├── prod.yaml
│   │   ├── qa.yaml
│   │   └── stage.yaml
│   ├── helm
│   │   ├── dev-values.yaml
│   │   ├── prod-values.yaml
│   │   ├── qa-values.yaml
│   │   └── stage-values.yaml
│   ├── main.py
│   ├── requirements.txt
│   └── test
│       └── pytest.py
├── service2
│   ├── README.md
│   ├── envs
│   │   ├── dev.yaml
│   │   ├── prod.yaml
│   │   ├── qa.yaml
│   │   └── stage.yaml
│   ├── helm
│   │   ├── dev-values.yaml
│   │   ├── prod-values.yaml
│   │   ├── qa-values.yaml
│   │   └── stage-values.yaml
│   ├── main.py
│   ├── requirements.txt
│   └── test
│       └── pytest.py
├── service3
│   ├── README.md
│   ├── envs
│   │   ├── dev.yaml
│   │   ├── prod.yaml
│   │   ├── qa.yaml
│   │   └── stage.yaml
│   ├── helm
│   │   ├── dev-values.yaml
│   │   ├── prod-values.yaml
│   │   ├── qa-values.yaml
│   │   └── stage-values.yaml
│   ├── main.py
│   ├── requirements.txt
│   └── test
│       └── pytest.py
└── service4
    ├── README.md
    ├── envs
    │   ├── dev.yaml
    │   ├── prod.yaml
    │   ├── qa.yaml
    │   └── stage.yaml
    ├── helm
    │   ├── dev-values.yaml
    │   ├── prod-values.yaml
    │   ├── qa-values.yaml
    │   └── stage-values.yaml
    ├── main.py
    ├── requirements.txt
    └── test
        └── pytest.py

```