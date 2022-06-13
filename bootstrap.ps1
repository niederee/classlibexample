#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
mkdir ClassLibExample
cd .\ClassLibExample\
dotnet new sln
mkdir src
mkdir tests
mkdir src\MyClassLib
mkdir tests\MyClassLib.Tests
cd .\src\MyClassLib\
dotnet new classlib
cd ..\..\tests\MyClassLib.Tests\
dotnet new mstest
cd ../..
dotnet sln .\ClassLibExample.sln add .\src\MyClassLib\MyClassLib.csproj --solution-folder src
dotnet sln .\ClassLibExample.sln add .\tests\MyClassLib.Tests\MyClassLib.Tests.csproj --solution-folder tests