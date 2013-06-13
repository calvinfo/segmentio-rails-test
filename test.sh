for i in $(seq 1 100 )
do
echo $i
curl -X POST -H 'Content-Type: application/json' -d '{"batch":[{"secret":"testsecret","userId":"some_user","event":"PHP Fork Queued Event","properties":null,"timestamp":"2013-01-30T14:34:50-08:00","context":{"library":"analytics-php"},"action":"track"}],"secret":"testsecret"}' 'https://api.segment.io/v1/import'

done
