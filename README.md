# GMG Copier Template

#### Install Requirements

```shell
sudo apt install python3 python3-pip python3-venv git
pip install pipx
pipx install copier
pipx ensurepath
```

#### Run copier
```
copier copy gh:Tardo/gmg-template gmg
cd gmg
docker-compose up -d
```

Now can visit: http://locahost:8080