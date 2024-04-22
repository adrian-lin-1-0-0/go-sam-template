invoke-%:
	sam local invoke $* --skip-pull-image -e events/$*.json
build-%:
	sam build $*
build:
	sam build
local-api:
	sam local start-api --warm-containers EAGER
curl-%:
	curl -X GET -H "Content-Type: application/json" -d @./events/$*.json http://localhost:3000/$(shell echo $*| tr A-Z a-z)