FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /srv/www/demoproject

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
#ARG source
#RUN apk add docker
WORKDIR /srv/www/demoproject
RUN apt-get update
COPY  --from=build-env /srv/www/demoproject/out  .


ENTRYPOINT ["dotnet", "demoproject.dll"]