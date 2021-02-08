py -m venv env
CALL env\Scripts\activate
set FLASK_APP=serv.py
set FLASK_ENV=development
flask run --host=0.0.0.0