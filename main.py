from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def hello():
    return {"message": "Hello from FastAPI with uv!"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}