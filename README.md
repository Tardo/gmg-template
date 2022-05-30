# GMG Copier Template

#### Requirements

- Python 3.7 or newer (3.8 or newer if you're on Windows).
- Git 2.27 or newer.
- Docker and docker-compose.

```shell
pip install pipx
pipx install copier
pipx ensurepath
```

#### Run this copier template
```
copier copy gh:Tardo/gmg-template gmg
cd gmg
docker-compose up -d
```

In development mode now can visit: http://locahost:8080 