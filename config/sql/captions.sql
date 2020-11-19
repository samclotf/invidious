-- Table: public.captions

-- DROP TABLE public.captions;

CREATE TABLE public.captions
(
  id INT GENERATED ALWAYS AS IDENTITY,
  text text,
  video_id text,
  name varchar(32),
  language varchar(8),
  CONSTRAINT caption_id_key UNIQUE (id)
);

GRANT ALL ON TABLE public.captions TO kemal;

-- TODO create index

