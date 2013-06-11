-- TODO-NEXT-RELEASE: rename file
# --- !Ups
ALTER TABLE entry DROP COLUMN "createdAt";

# --- !Downs
ALTER TABLE entry ADD COLUMN "createdAt" DATE DEFAULT CURRENT_DATE;