@echo on
certutil -hashfile "%~f1" sha256 | clip
TIMEOUT /T 15