<aura:application extends="force:slds">
    <aura:attribute name="myVal" type="String"/>
    <c:Picklist_Example myVal="{!myVal}"/>
    you have selected : {!v.myVal}
</aura:application>