from fastapi import FastAPI
import random
app = FastAPI()

@app.get('/')
def health_check():
    return "Everything working well"



@app.get('/{value}')
def health_checks(value : str):

    ans = {
        "name" : value,
        "age" : random.randint(0, 100)
    }

    return ans

