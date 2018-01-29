REM set build path  
set buildlocation=%1  
  
REM set deployment path  
set targetdir="C:\deploy"  
  
REM create deployment directory  
if not exist %targetdir% (cmd /c mkdir %targetdir%)  
  
REM copy build to the deployment directory  
xcopy /c /y /e %buildlocation%\*.* %targetdir%  
  
REM if you are using a deployment package you can run it here, after you copy it to your deployment directory
