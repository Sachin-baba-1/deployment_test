from fastapi import FastAPI
app=FastAPI()
@app.get("/")
def home():
	return {"messgae":"deployment"}

text=""

@app.get("/text")
def somethingelse(text):
	return {"text":text.upper()}
@app.post("/gettt")
def something(text):
	return somethingelse(text)
