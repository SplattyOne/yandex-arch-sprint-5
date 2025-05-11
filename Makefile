rasa_start:
	rasa run --enable-api --cors "*" --debug --model ./rasa_platform/models/

ui_start:
	npm run start --prefix ui

show_logs:
	cat ./rasa_logs/rasa.log
