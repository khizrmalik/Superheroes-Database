Create TABLE H (
    u, 
    h, 
    PRIMARY KEY (u));

CREATE TABLE A(
    a,
    i,
    q,
    primary key(a));
    
Create TABLE Q (
    c VARCHAR, 
    e VARCHAR, 
    PRIMARY KEY (c));

CREATE TABLE T (
    p,
    t DATE,
    g INT,
    j VARCHAR,
    a,
    PRIMARY KEY (p),
    FOREIGN KEY(a) REFERENCES A(a));

Create TABLE R (
    p INT, 
    k VARCHAR, 
    l VARCHAR,
    a VARCHAR,  
    FOREIGN KEY (p) REFERENCES T(p)
    FOREIGN KEY (a) REFERENCES A(a));

Create TABLE B (
    p INT,
    b INT, 
    r VARCHAR(64), 
    PRIMARY KEY (b, r), 
    FOREIGN KEY (p) REFERENCES R(p));


Create TABLE G (
    f VARCHAR,
    a VARCHAR,
    p,
    d,
    PRIMARY KEY (f), 
    FOREIGN KEY (p) REFERENCES R(p),
    FOREIGN KEY (a) REFERENCES A(a));

/*Table between Q and G created for many to many */
CREATE TABLE J (
    c VARCHAR, 
    f VARCHAR, 
    FOREIGN KEY (f) REFERENCES G(f), 
    FOREIGN KEY (f) REFERENCES Q(f));

/*Table between Q and T */
CREATE TABLE E (
    p INT, 
    c VARCHAR, 
    FOREIGN KEY (p) REFERENCES T(p), 
    FOREIGN KEY (c) REFERENCES Q(c));

/*Table between Q and A*/
CREATE TABLE K (
    a INT, 
    c VARCHAR, 
    FOREIGN KEY (a) REFERENCES A(a), 
    FOREIGN KEY (c) REFERENCES Q(c));

/*Three Table thing*/
CREATE TABLE L (
    a,
    p, 
    u,
    FOREIGN KEY (a) REFERENCES A(a)
    FOREIGN KEY (p) REFERENCES T(p)
    FOREIGN KEY (u) REFERENCES H(u));

