-- Table: public.user_captions

-- DROP TABLE public.user_captions;

CREATE TABLE public.user_captions
(
  caption_id INT,
  email text,
  CONSTRAINT fk_caption
      FOREIGN KEY(caption_id)
      REFERENCES captions(id)
      ON DELETE CASCADE,
  CONSTRAINT fk_user
      FOREIGN KEY(email)
      REFERENCES users(email)
);

GRANT ALL ON TABLE public.user_captions TO kemal;

