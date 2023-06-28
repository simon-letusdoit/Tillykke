FROM mcr.microsoft.com/dotnet/sdk:7.0
# Changed to 3.1 (https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-core)

COPY . ./app

WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 5000/tcp

CMD ["dotnet", "run", "--server.urls", "http://*:5000"]