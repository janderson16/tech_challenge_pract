// <div>
//     <ul data-continent="North America">
//         <li data-species="California condor">Critically Endangered</li>
//         <li data-species="American bison">Near Threatened</li>
//     </ul>
//     <ul data-continent="Europe">
//         <li data-species="Cave bear">Extinct</li>
//         <li data-species="American bison">Extinct</li>
//     </ul>
// </div>

$("ul[data-continent='" + continent +"'] li[data-species='" + species +"']").val()
// first solution (i think)
$("ul[data-continent='" + continent +"'] li[data-species='" + species +"']").innerText
// returns DOM element not jQuery; doesnt pass tests
return $( "ul[data-continent='" + continent + "'] li[data-species='" + species  + "']" ).html();
// from stackoverflow
