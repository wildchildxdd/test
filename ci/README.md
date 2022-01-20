# TeamCity

For docker created new user nonroot (/home/nonroot) without password and was add into docker user group. Path for teamcity work directory /home/nonroot/teamcity/.
* /home/nonroot/teamcity/agent-conf - agent config
* /home/nonroot/teamcity/data - teamcity server data
* /home/nonroot/teamcity/docker-compose.yaml - docker-compose file
* /home/nonroot/teamcity/logs - teamcity server logs
* /home/nonroot/teamcity/pgdata - Postgre data

#### To bring up run in bash
run
```bash
docker-compose up
```
