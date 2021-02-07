# idcard

1. Open 'Administrator Powershell'

2. Install 'Choco'

```
Set-ExecutionPolicy AllSigned
```

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

3. Install 'python' https://www.python.org/downloads/

4. Reopen 'Administrator Powershell'

5. Upgrade 'pip'

```
python -m pip install --upgrade pip
```

6. Install Dependency Tools for Pyscard

```
choco install visualstudio2017buildtools
```

```
choco install swig
```

7. Install Python Project Dependencies (follow step)

```
pip install flask
```

```
pip install flask_cors
```

```
pip install wheel
```

```
pip install pyscard
```

8. Run Serv.py

```
$env:FLASK_APP = "serv.py"
```

```
python -m flask run
```

9. API

- /get_status คืนค่าสถานะของเครื่องอ่าน (return the status of smartcard reader)
- /get_data คืนข้อมูลทุกอย่างบน smartcard (return all text information)
- /get_photo_byte คืนค่ารูปภาพเป็น bytes (return jpeg photo as bytes)
- /get_photo_json คืนค่ารูปภาพเป็น array of ints (return jpeg photo as array of integers)
