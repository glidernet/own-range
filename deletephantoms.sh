#!/bin/bash
echo "select * from stations                where  station = '$1';"       
mysql --login-path=ognrange -e "select * from stations                where  station = '$1';"                                                ognrange
mysql --login-path=ognrange -e "delete   from stationlocation         where  station     = (select id from stations where station = '$1'); " ognrange 
mysql --login-path=ognrange -e "delete   from roughcoverage           where  station     = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from availability            where  station_id  = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from availability_log        where  station_id  = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from positions_mgrs          where  station     = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from stats                   where  station     = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from statssummary            where  station     = (select id from stations where station = '$1'); " ognrange
mysql --login-path=ognrange -e "delete   from stations                where  station = '$1'; "                                               ognrange
