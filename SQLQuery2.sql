--SELECT * FROM Grade;

--SELECT e.Name
--FROM PoemEmotion pe
--Left join Poem p on pe.PoemId = p.Id
--left join Emotion e on pe.EmotionId = e.Id

--SELECT COUNT(p.Id) AS 'NumPoems'
--FROM Poem p

--SELECT TOP 76 a.Name, g.Name, ge.Name
--FROM Author a
--join Grade g on a.gradeid = g.id
--join Gender ge on a.genderid = ge.id
--ORDER BY a.Name;

--select sum(p.WordCount) as 'words'
--from poem p

--select top 1 p.CharCount, p.Title
--from poem p
--order by p.charcount;

--select count(a.gradeid) as 'num'
--from author a
--where a.gradeid = 3;

--select count(a.gradeid) as 'num'
--from author a
--where a.gradeid < 4;

--select count(a.gradeid) as 'num'
--from poem p
--join author a on p.AuthorId = a.id
--where a.gradeid = 4;

--select count( p.authorid )
--from poem p
--join author a on p.authorid = a.id
--group by a.gradeid;

--select count(a.id)
--from author a
--group by a.gradeid ;

--select top 1 p.Title, p.WordCount
--from poem p
--order by p.WordCount desc;

--select top 1 count(p.id), a.name
--from poem p
--left join author a on p.AuthorId = a.id
--group by a.Name
--order by count(p.id) desc;

--select count(p.id)
--from poememotion pe
--join poem p on pe.poemId = p.id
--join emotion e on pe.emotionid = e.id
--where e.name = 'sadness';

--select count(p.id)
--from poem p
--left join poememotion pe on p.id = pe.poemid
--left join emotion e on pe.EmotionId = e.id
--where pe.poemid IS NULL;

--select count(pe.id), e.name
--from poememotion pe
--left join emotion e on pe.EmotionId = e.id
--group by e.name
--order by count(pe.id);

--select g.name, count(pe.id)
--from poememotion pe
--left join emotion e on pe.emotionid = e.id
--left join poem p on pe.poemid = p.id
--left join author a on p.authorid = a.id
--left join grade g on a.gradeid = g.id
--where e.name = 'joy'
--group by g.name
--order by count(pe.id) desc;

select g.name, count(pe.id)
from poememotion pe
left join emotion e on pe.emotionid = e.id
left join poem p on pe.poemid = p.id
left join author a on p.authorid = a.id
left join gender g on a.genderid = g.id
where e.name = 'fear'
group by g.name
order by count(pe.id);