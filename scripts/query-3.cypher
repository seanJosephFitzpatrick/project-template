// This query retreives the property name and FinalCount from the Candidate nodes and converts the String value FinalCount to an Integer value. 
// The value FinalCount are returned in descending order. 
// The property value FinalCount represents the final numbers of votes recieved by the candidate.


//Query 3
MATCH (n:Candidate)
RETURN COLLECT(n.name) as Candidate,(n.FinalCount) as Votes
ORDER BY TOINT(n.FinalCount) desc