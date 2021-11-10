
CREATE TABLE Mortality_Table (
	Country VARCHAR(50) CONSTRAINT firstkey PRIMARY KEY ,
	Admin1 VARCHAR(50) , 
	Subdiv VARCHAR(50) ,
	Year VARCHAR(50) , 
	list VARCHAR(50) , 
	Cause VARCHAR(50) ,
	Sex VARCHAR(50) ,
	Frmat VARCHAR(50) ,
	IM_Frmat VARCHAR(50) ,
	Deaths1 VARCHAR(50) 

);