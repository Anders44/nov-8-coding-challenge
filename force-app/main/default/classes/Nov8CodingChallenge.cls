//Use the Nov8CodingChallenge class and expand the getOppRevByAccount()
// method so that it uses an aggregate function to return the sum of expected
// revenue across all opportunities grouped by the names of their related accounts.
// Once this information has been retrieved, populate a Map<String, Double> with the
// keys being the name of the account and the values being the sum of expected
// revenue for all of its related children opportunities. Return this Map<String, Double>.


public class Nov8CodingChallenge {
    public static Map<String, Double> getOppRevByAccount() {
        
        Map<Id, AggregateResult> myMap = new Map<Id, AggregateResult>([
            select AccountId Id, SUM(ExpectedRevenue) 
            FROM opportunity where AccountId != NULL
            group by AccountId]);


        // this is just a dummy return statement so you don't get an error when deploying the template to your org
        return new Map<String, Double>();
    }
}