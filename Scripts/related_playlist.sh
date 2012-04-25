#!/bin/bash

ARTIST_ID=`/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "select t.artist_id from library.musicfile mf inner join music.track t on mf.track_id = t.id where mf.external_id = '$*'"`

echo $1
/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "
select mf.external_id from (
 select * from (
  select att.music_file_id, att.artist_id, att.rank as track_rank, ar.weight as artist_weight, rank() over 
  (partition by att.artist_id order by rank) as artist_rank from library.artisttoptrackplaycount att
   inner join music.artistrelation ar on ar.target_id = att.artist_id and ar.source_id = $ARTIST_ID
 ) ranked_tracks
 where ranked_tracks.artist_rank <= 3
 order by ranked_tracks.artist_weight desc, track_rank limit 24
) selected_tracks
inner join library.musicfile mf on selected_tracks.music_file_id = mf.id and mf.external_id is not null
"
