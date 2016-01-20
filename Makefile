
input/Survey.csv:
	mkdir -p input 
	curl https://raw.githubusercontent.com/jupyter/design/master/surveys/2015-notebook-ux/20160115235816-SurveyExport.csv -o input/Survey.csv
input: input/Survey.csv

output/Survey.csv: input/Survey.csv
	mkdir -p output
	python src/process.py
csv: output/Survey.csv

all: csv

clean:
	rm -rf output