cd msbuild
docker push kinmarui/atlassian-msbuild

cd ../nuget
docker build -t kinmarui/atlasian-nuget .
docker push kinmarui/atlassian-nuget
