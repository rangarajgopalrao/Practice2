trigger WHAT_IS_TRNEW_VS_TRNEWMAP on Contact (before update)
{
    list<contact> c1 = trigger.new;
    map<id,contact> c2  = trigger.newmap;
    list<contact> c3 = trigger.old;
    map<id,contact> c4 = trigger.oldmap;
    system.debug(c1);
    system.debug(c2);
    system.debug(c3);
    system.debug(c4);
}