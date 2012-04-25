#!/bin/bash

ARTIST_ID=`/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "select t.artist_id from library.musicfile mf inner join music.track t on mf.track_id = t.id where mf.external_id = '$*'"`

/Library/PostgreSQL/9.1/bin/psql -U postgres -d musiccabinet -A -t -c "
select mf.external_id from library.artisttoptrackplaycount att
 inner join library.musicfile mf on att.music_file_id = mf.id
 where att.artist_id = $ARTIST_ID and mf.external_id is not null
 order by rank
 limit 20"
