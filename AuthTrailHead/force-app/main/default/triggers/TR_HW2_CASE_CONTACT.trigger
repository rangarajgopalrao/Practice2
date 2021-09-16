trigger TR_HW2_CASE_CONTACT on Contact (after insert)
{
      list<contact> c = trigger.new;
     TR_CLASS_HW2_CASE_CONTACT.defaultcase(c);
}