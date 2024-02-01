Setting 
Init data (Only 1 time on server)
- running prestart_local.sh

Setting for Developer 
Local Run 
- install python >= v3.10
- install poetry
- running poetry install 
- running poetry shell 
- Update .env file with 
    POSTGRES_SERVER =  IP DB server
- runing be app local by
    uvicorn main:app --env-file .env