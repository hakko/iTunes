#!/bin/bash

/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "
select external_id from 
library.musicfile where id in (
 select ranked_files.music_file_id from (
  select att.music_file_id, att.artist_id, rank() over
  (partition by att.artist_id order by (random()*(110 - rank + (play_count/3))) desc) as artist_rank from library.artisttoptrackplaycount att
  where att.artist_id in (
   select att.artist_id from music.tag tag
   inner join music.artisttoptag att on att.tag_id = tag.id
   where tag.tag_name = '$*'
   group by att.artist_id
   order by sum(tag_count)*sum(tag_count)*random() desc
   limit 25
  )
 ) ranked_files where ranked_files.artist_rank = 1
) and external_id is not null
order by random()"
