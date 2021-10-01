# calcurse webdav subscription

a script to subscribe via icalendar/ics/webdav with calcurse

## how to use
```shell
$uniqe_id="freakshow" # uniqe id
$ics_download_url="https://www.google.com/calendar/ical/ubl4uig3djl1a2lo06ku0uroro%40group.calendar.google.com/public/basic.ics" # url to subscribe
./calcurse_webdav_subscription.sh $uniqe_id $ics_download_url 
```

## how it works

1. delete every entry with uniqe_id in title (so don't use uniqe_id in youre manually made entries!)
2. download ics
3. append uniqe_id to every title
4. import ics
5. repeat
