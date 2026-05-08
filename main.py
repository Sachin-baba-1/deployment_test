from fastapi import FastAPI
app=FastAPI()
@app.get("/")
def home():
	return {"messgae":"deployment"}

@app.post("/gett")
def  something(text):
	return {"response":text.upper()}
