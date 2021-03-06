//These are the queries used to create the relationships.

//Relationship for Carlow Kilkenny Candidates
MATCH	(a: Candidate {Constituency:  "Candidate_CK"}),	(b: Constituency	{name:	"Carlow Kilkenny"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Cavan–Monaghan Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CM"}),	(b: Constituency	{name:	"Cavan Monaghan"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Clare Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Clare"}),	(b: Constituency	{name:	"Clare"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for CORK East Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CE"}),	(b: Constituency	{name:	"Cork East"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for CORK North Central Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CNC"}),	(b: Constituency	{name:	"Cork North Central"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for CORK North West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CNW"}),	(b: Constituency	{name:	"Cork North West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for CORK South Central Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CSC"}),	(b: Constituency	{name:	"Cork South Central"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for CORK South West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_CSW"}),	(b: Constituency	{name:	"Cork Souht West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Donegal Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Donegal"}),	(b: Constituency	{name:	"Donegal"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin Bay North Candidates
MATCH	(a: Candidate {Constituency: "Candidate_DBN"}),	(b: Constituency	{name:	"Dublin Bay North"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin Bay South Candidates
MATCH	(a: Candidate {Constituency: "Candidate_DBS"}),	(b: Constituency	{name:	"Dublin Bay South"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin Central Candidates
MATCH	(a: Candidate {Constituency: "Candidate_D_Central"}),	(b: Constituency	{name:	"Dublin Central"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin Fingal Candidates
MATCH	(a: Candidate {Constituency: "Candidate_D_Fingal"}),	(b: Constituency	{name:	"Dublin Fingal"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin Mid West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_D_MW"}),	(b: Constituency	{name:	"Dublin Mid West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)


//Relationship for Dublin North West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_D_NW"}),	(b: Constituency	{name:	"Dublin North West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)


//Relationship for Dublin Rathdown Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Rathdown"}),	(b: Constituency	{name:	"Dublin Rathdown"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin South Central Candidates
MATCH	(a: Candidate {Constituency: "Candidate_SC"}),	(b: Constituency	{name:	"Dublin South Central"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin South West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_DSW"}),	(b: Constituency	{name:	"Dublin South West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dublin West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_D_West"}),	(b: Constituency	{name:	"Dublin West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Dun Laoghaire Candidates
MATCH	(a: Candidate {Constituency: "Candidate_DunLaoghaire"}),	(b: Constituency	{name:	"Dún Laoghaire"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Galway East Candidates
MATCH	(a: Candidate {Constituency: "Candidate_GalwayEast"}),	(b: Constituency	{name:	"Galway East"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Galway West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_GalwayWest"}),	(b: Constituency	{name:	"Galway West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Kerry Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Kerry"}),	(b: Constituency	{name:	"Kerry"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Kildare North Candidates
MATCH	(a: Candidate {Constituency: "Candidate_KildareNorth"}),	(b: Constituency	{name:	"Kildare North"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Kildare South Candidates
MATCH	(a: Candidate {Constituency: "Candidate_KildareSouth"}),	(b: Constituency	{name:	"Kildare South"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Laois Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Laois"}),	(b: Constituency	{name:	"Laois"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Limerick City Candidates
MATCH	(a: Candidate {Constituency: "Candidate_LimerickCity"}),	(b: Constituency	{name:	"Limerick City"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Limerick County Candidates
MATCH	(a: Candidate {Constituency: "Candidate_LimerickCounty"}),	(b: Constituency	{name:	"Limerick County"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Longford Westmeath Candidates
MATCH	(a: Candidate {Constituency: "Candidate_LongfordWestMeath"}),	(b: Constituency	{name:	"Longford Westmeath"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Louth Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Louth"}),	(b: Constituency	{name:	"Louth"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Mayo Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Mayo"}),	(b: Constituency	{name:	"Mayo"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Meath East Candidates
MATCH	(a: Candidate {Constituency: "Candidate_MeathEast"}),	(b: Constituency	{name:	"Meath East"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Meath West Candidates
MATCH	(a: Candidate {Constituency: "Candidate_MeathWest"}),	(b: Constituency	{name:	"Meath West"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Roscommon Galway Candidates
MATCH	(a: Candidate {Constituency: "Candidate_RoscommonGalway"}),	(b: Constituency	{name:	"Roscommon Galway"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Sligo Leitrim Candidates
MATCH	(a: Candidate {Constituency: "Candidate_SligoLeitrim"}),	(b: Constituency	{name:	"Sligo Leitrim"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Tipperary Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Tipperary"}),	(b: Constituency	{name:	"Tipperary"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)


//Relationship for Waterford Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Waterford"}),	(b: Constituency	{name:	"Waterford"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Wexford Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Wexford"}),	(b: Constituency	{name:	"Wexford"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Wicklow Candidates
MATCH	(a: Candidate {Constituency: "Candidate_Wicklow"}),	(b: Constituency	{name:	"Wicklow"	}	)
CREATE	(a)-[:RAN_IN_ELECTION]->(b)

//Relationship for Fine Gael Party
MATCH	(a: Irish_Political_Party {PartyName: "Fine Gael"}),	(b: Candidate	{Party:	"Fine Gael"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Fianna Fáil Party
MATCH	(a: Irish_Political_Party {PartyName: "Fianna Fáil"}),	(b: Candidate	{Party:	"Fianna Fáil"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Sinn Féin Party
MATCH	(a: Irish_Political_Party {PartyName: "Sinn Féin"}),	(b: Candidate	{Party:	"Sinn Féin"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Labour Party
MATCH	(a: Irish_Political_Party {PartyName: "Labour Party"}),	(b: Candidate	{Party:	"Labour Party"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Green Party
MATCH	(a: Irish_Political_Party {PartyName: "Green Party"}),	(b: Candidate	{Party:	"Green Party"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Reanua Ireland
MATCH	(a: Irish_Political_Party {PartyName: "Reanua Ireland"}),	(b: Candidate	{Party:	"Renua Ireland"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Anti-Austerity Alliance-People Before Profit
MATCH	(a: Irish_Political_Party {PartyName: "Anti-Austerity Alliance-People Before Profit"}),	(b: Candidate	{Party:	"AAA–PBP"	}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Social Democrats
MATCH	(a: Irish_Political_Party {PartyName: "Social Democrats"}),	(b: Candidate	{Party:	"Social Democrats"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Independent
MATCH	(a: Irish_Political_Party {PartyName: "Independent"}),	(b: Candidate	{Party:	"Independent"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Workers Party
MATCH	(a: Irish_Political_Party {PartyName: "Workers Party"}),	(b: Candidate	{Party:	"Workers' Party"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Fís Nua
MATCH	(a: Irish_Political_Party {PartyName: "Fís Nua"}),	(b: Candidate	{Party:	"Fís Nua"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Communist Party
MATCH	(a: Irish_Political_Party {PartyName: "Communist Party"}),	(b: Candidate	{Party:	"Communist Party"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Catholic Democrats
MATCH	(a: Irish_Political_Party {PartyName: "Catholic Democrats"}),	(b: Candidate	{Party:	"Catholic Democrats"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Independents 4 Change
MATCH	(a: Irish_Political_Party {PartyName: "Independents 4 Change"}),	(b: Candidate	{Party:	"Independents 4 Change"}	)
CREATE	(a)-[:Party_Member]->(b)

//Relationship for Independent Alliance
MATCH	(a: Irish_Political_Party {PartyName: "Independent Alliance"}),	(b: Candidate	{Party:	"Independent Alliance"}	)
CREATE	(a)-[:Party_Member]->(b)




