select a.AlbumId, count(t.TrackId)
from albums a
join tracks t
on a.AlbumId = t.AlbumId
group by a.AlbumId
having count(t.TrackId) >= 25;