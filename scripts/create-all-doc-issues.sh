#!/bin/zsh

# Bash support only one dimensional array so we put the name of the page first, and the URL to the page second
pages=(
	"Page 1"
	"https://URLHERE"
	"Page 2"
	"https://URLHERE"
)

totalpages=${#pages[@]}

# use for loop to read all values and indexes
for (( i=1; i<${totalpages}; i=i+1 ));
do
	title=${pages[$i]}
	i=i+1
	url=${pages[$i]}

	curl -X POST -H "Accept: application/vnd.github.v3+json" -H "Authorization: token '${GITHUB_STARS_TOKEN}'" https://api.github.com/repos/company/documentation/issues -d '{"title":"Review the \"'${title}'\" documentation page", "body":"Review the ['${title}']('${url}') documentation page", "owner":"fharper", "assignees":["fakela"]}'

	# Do not change as you can be banned caused of the limitation of call on GH
	sleep 10
done
