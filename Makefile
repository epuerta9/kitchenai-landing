commit = $(shell git rev-parse --short HEAD)
ifndef version
	version := 0.1.0
endif

ifndef env
	env := local
endif

project_id := 47585698

group_id := 61663828

cloudlfare_account_ID := b53ea43a517b41f05996d612d883e91d

build:
	hugo build

deploy: build
	wrangler pages deploy dist/ --project-name rhinosearch-landing