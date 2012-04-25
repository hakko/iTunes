#!/bin/bash

ARTIST_ID=`/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "select t.artist_id from library.musicfile mf inner join music.track t on mf.track_id = t.id where mf.external_id = '$*'"`

echo $1
/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "
select mf.external_id from (
 select * from (
  select att.music_file_id, att.artist_id, ar.weight as artist_weight, rank() over 
  (partition by att.artist_id order by (random()*(110 - rank + (play_count/3))) desc) as artist_rank from library.artisttoptrackplaycount att
   inner join (select source_id, target_id, weight from music.artistrelation union all select $ARTIST_ID, $ARTIST_ID, 1) ar 
     on ar.target_id = att.artist_id and ar.source_id = $ARTIST_ID
 ) ranked_tracks
 where ranked_tracks.artist_rank <= 3
 order by random()* ranked_tracks.artist_weight * ranked_tracks.artist_weight desc limit 24
) selected_tracks
inner join library.musicfile mf on selected_tracks.music_file_id = mf.id where mf.external_id is not null
order by random()"

