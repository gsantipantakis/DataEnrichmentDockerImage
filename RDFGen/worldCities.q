makeURI(?id) a :City ; :partOf makeURI(?country) ; 
    :hasName asString(?city_ascii) ; 
    :hasPopulation asString(?population) ; 
    :hasGeometry makePointURI(?lat,?lon) ;
    :isCapital asString(?capital) .
position2geoSPARQL(?lat,?lon)
