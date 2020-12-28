dvc init
dvc remote add -d myremote gdrive://1BSmY4W_6omWXVsEGRMy1zIzBm9itgXUP
dvc run -n get_data -d get_data.py -o data_raw.csv --no-exec python get_data.py
dvc repro

### run
# pip install -r requirements.txt
# dvc repro
# git fetch --prune
# dvc metrics diff --show-md master > report.md
## add figure to the report
# echo "## Validating results by region"
# cml-publish by_region.png --md >> report.md
# cml-send-comment report.md
