trigger Opp_Team_Example on Opportunity (after insert) {
        Opportunity_Team_Example.create(trigger.new);
}