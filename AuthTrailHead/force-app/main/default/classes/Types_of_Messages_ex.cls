public class Types_of_Messages_ex
{
    public Types_of_Messages_ex()
    {
        apexpages.Message msg = new apexpages.Message(apexpages.Severity.CONFIRM,'Successfully submitted');
        apexpages.Message msg1 = new apexpages.Message(apexpages.Severity.ERROR,'field name must be enter');
        apexpages.Message msg2 = new apexpages.Message(apexpages.Severity.WARNING,'this is final submission please verify once');
        apexpages.Message msg3 = new apexpages.Message(apexpages.Severity.INFO,'if more information or Help');
        apexpages.addMessage(msg);
        apexpages.addMessage(msg1);
        apexpages.addMessage(msg2);
        apexpages.addMessage(msg3);
    }
}