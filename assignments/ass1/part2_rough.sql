CREATE TABLE Employees_Work (
    Role TEXT,
    ID INTEGER,
    Name TEXT,
    Address TEXT,
    SupervisorID INTEGER,
    PRIMARY KEY (ID), NOT NULL,
    FOREIGN KEY (ID) REFERENCES Facilities_Manages
    ON DELETE NO ACTION
);

CREATE TABLE Facilities_Manages (
    ID INTEGER,
    Address TEXT,
    City TEXT,
    PRIMARY KEY (ID), NOT NULL,
    FOREIGN KEY (ID) REFERENCES Employees_Work
    *ON DELETE NO ACTION
);

CREATE TABLE Parcels (
    TrackNumber INTEGER,
    DeliveryAddress TEXT,
    DropTime DATETIME,
    Goods TEXT,
    Weight DECIMAL(10,2),
    PRIMARY KEY (TrackNumber, Goods),
    ON DELETE CASCADE
);

CREATE TABLE Attempt_Deliver (
    DeliveryTime DATETIME,
    Driver TEXT,
    Status TEXT,
    Feedback TEXT,
    PRIMARY KEY (TrackNumber, DeliveryTime),
    FOREIGN KEY (TrackNumber) REFERENCES Parcels,
    ON DELETE CASCADE
);

# Many to many with Facilities and Parcels
CREATE TABLE Enter (
    Next TEXT,
    EntryTime DATETIME,
    PRIMARY KEY (ID, TrackNumber),
    FOREIGN KEY ID REFERENCES Facilities,
    FOREIGN KEY TrackNumber REFERENCES Parcels,
);

# Many to many with Facilities and Parcels
CREATE TABLE Exit (
    ExitTime DATETIME,
    Transportation TEXT,
    PRIMARY KEY (ID, TrackNumber),
    FOREIGN KEY ID REFERENCES Facilities,
    FOREIGN KEY TrackNumber REFERENCES Parcels,
);

CREATE TABLE Regular (
    TrackNumber INTEGER,
    FOREIGN KEY (TrackNumber) REFERENCES Parcels,
    PRIMARY KEY (TrackNumber),
);

 CREATE TABLE Expedited (
    Date DATE,
    Country TEXT,
    TotalValue DECIMAL(5,2),
    TrackNumber INTEGER,
    PRIMARY KEY (TrackNumber),
    FOREIGN KEY (TrackNumber) REFERENCES Parcels,
 )
