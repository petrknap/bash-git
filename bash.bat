docker build %~dp0 -t petrknap/bash-git:latest

docker run --rm -ti ^
           -v "%UserProfile%\\.ssh\\known_hosts":/root/.ssh/known_hosts ^
           -v %cd%:/mnt/pwd ^
           petrknap/bash-git:latest ^
           %*
