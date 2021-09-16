trigger Poty_Share_Example on Opportunity (after insert) {
    Poty_Share_Example.sharerecord(trigger.new);
}