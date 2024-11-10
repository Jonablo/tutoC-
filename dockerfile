# Use .NET SDK 8.0 image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy project files and restore dependencies
COPY ./*.csproj ./
RUN dotnet restore

# Copy the rest of the code and publish in Release mode
COPY . .
RUN dotnet publish -c Release -o /app/publish

# Use .NET runtime 8.0 image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copy the published app from the build stage
COPY --from=build /app/publish .

# Expose port 8080
EXPOSE 8080

# Start the app
ENTRYPOINT ["dotnet", "tutoC#.dll"]