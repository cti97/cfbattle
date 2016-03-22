<cfoutput>
<cfsavecontent variable="behehe">
<cfset tosheepornottosheep = ArrayNew(1) />

<cfloop index = "LoopCount" from = "1"  to = "20"> 
<cfset animal = structnew() />
<cfset animal.isSheep = RandRange(0,1) />
<cfset animal.isYoung = RandRange(0,1) />
<cfset animal.isBlack = RandRange(0,1) />
<cfset ArrayAppend(tosheepornottosheep,animal)/>

</cfloop>

<cfset total = structnew()/>
<cfset total.white = 0 />
<cfset total.black = 0 />
<cfset total.wool = 0 />

<cfloop index = "LoopCount" from = "1"  to = "20">
<cfif tosheepornottosheep[LoopCount].isYoung>
   This sheep is not ready to be sheared<br/>
<cfelse>
  <cfset total.wool = total.wool + 1 />
  <cfif  tosheepornottosheep[LoopCount].isBlack>
    <cfset total.black = total.black + 1 />
  <cfelse>
    <cfset total.white = total.white + 1 />
  </cfif>
</cfif>

</cfloop>
<cfdump var="#total#" label="total">
<cfdump var="#tosheepornottosheep#" label="sheep queue used">
</cfsavecontent>
#behehe#
<cffile action = "write" file = "/var/www/html/sheep.htm" output = "#behehe#" />
</cfoutput>
