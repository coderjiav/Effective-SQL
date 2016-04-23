CREATE TABLE DocumentStatus (
  DocumentNumber int PRIMARY KEY,
  Status varchar(20) NOT NULL
);

CREATE INDEX PendPubDocuments
ON DocumentStatus (DocumentNumber, Status)
WHERE Status = 'Pending publication';

CREATE INDEX PendExpDocuments
ON DocumentStatus (DocumentNumber, Status)
WHERE Status = 'Pending expiration';

DROP INDEX PendPubDocuments;

DROP INDEX PendExpDocuments;

DROP TABLE DocumentStatus;