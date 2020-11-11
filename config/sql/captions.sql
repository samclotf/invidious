-- Table: public.captions

-- DROP TABLE public.captions;

CREATE TABLE public.captions
(
  id INT GENERATED ALWAYS AS IDENTITY,
  text text,
  video_id text,
  name varchar(32),
  language varchar(8),
  CONSTRAINT fk_videos FOREIGN KEY(video_id)
      REFERENCES public.videos(id)
);

GRANT ALL ON TABLE public.captions TO kemal;

-- TODO create index

-- TODO remove this. is just for testing.
insert into
public.captions
(text, video_id, name, language)
values ('00:00:01.020 --> 00:00:08.900
bzzzzzz
zzzzz

00:00:08.900 --> 00:00:13.600
Bees are cute

00:00:13.600 --> 00:00:14.600
*more buzzzzzzing*

', 'MobAanNT1JA', 'test01', 'en-US');
insert into
public.captions
(text, video_id, name, language)
values ('00:00:01.020 --> 00:00:08.900
bzzzzzz
zzzzz

00:00:08.900 --> 00:00:13.600
Bees are cute

00:00:13.600 --> 00:00:14.600
*more buzzzzzzing*

', 'IJEaMtNN_dM', 'test01', 'en-US');
