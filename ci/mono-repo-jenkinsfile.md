


## Repo Tree
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


## Locate what services have been changed

Non recursive, only the root directory
```
git diff-tree --no-commit-id --name-only $(git log --format=format:%H -1)
```

Recursive, full files path
```
git diff-tree --no-commit-id --name-only -r $(git log --format=format:%H -1)
```


So the CI pipeline is: 
```
def services = []
pipeline { 
    agent { 
        kubernetes { }
    }
    stages {
        stage("Locate Changes") {
            steps {
                services = sh (git diff-tree --no-commit-id --name-only $(git log --format=format:%H -1))
            }
        }
        stage("Service 1") {
            when {services.contains("service1")}
            steps {
                pipeline.nodejs(service1/properties)
            }
        }
        stage("Service 2") {
            when {services.contains("service2")}
            steps {
                pipeline.nodejs(service2/properties)
            }
        }
        stage("Service 3") {
            when {services.contains("service3")}
            steps {
                pipeline.nodejs(service3/properties)
            }
        }
        stage("Service 4") {
            when {services.contains("service4")}
            steps {
                pipeline.nodejs(service4/properties)
            }
        }
    }

}
```

Shared library module