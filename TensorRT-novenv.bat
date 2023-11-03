@echo off

call environment.bat

call python.exe -m pip install --upgrade pip
call python -m pip install nvidia-cudnn-cu11==8.9.4.25 --no-cache-dir
call python -m pip install --pre --extra-index-url https://pypi.nvidia.com/ tensorrt==9.0.1.post11.dev4 --no-cache-dir
call python -m pip uninstall -y nvidia-cudnn-cu11

pause
