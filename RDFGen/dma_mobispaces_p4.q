createMMSI(?mmsi) :hasCode asString(?mmsi) ;
   :MMSIinstalledOnVessel createVessel(?mmsi,"2021") .
createVessel(?mmsi,"2021") :hasIMO asString(?imo) ; :hasTrajectory makeTrajectory(?mmsi).

makeTrajectory(?mmsi) :hasPart makeSemanticNode4DateTime(?mmsi,?time,?lon,?lat,"dd/MM/yyyyTHH:mm:ss") .
makeSemanticNode4DateTime(?mmsi,?time,?lon,?lat,"dd/MM/yyyyTHH:mm:ss") :hasGeometry makePointURI(?lat,?lon) ; :hasTemporalFeature makeTimeInstantByDateTime(?time,"dd/MM/yyyyTHH:mm:ss") ;
   :hasSpeedOverGround asString(?sog) ; :hasCourseOverGround asString(?cog) ; :hasHeading asString(?heading) ; :hasNavigationalStatus asString(?navStat) ;
   :hasWeatherCondition makeWeatherURI3DateTime(?lon,?lat,?time,"dd/MM/yyyyTHH:mm:ss").
makeWeatherURI3DateTime(?lon,?lat,?time,"dd/MM/yyyyTHH:mm:ss") :has_Mean_wave_direction_msl asString(?Mean_wave_direction_msl); 
:has_Mean_wave_direction_of_first_swell_partition_msl asString(?Mean_wave_direction_of_first_swell_partition_msl); 
:has_Mean_wave_direction_of_second_swell_partition_msl asString(?Mean_wave_direction_of_second_swell_partition_msl); 
:has_Mean_wave_direction_of_third_swell_partition_msl asString(?Mean_wave_direction_of_third_swell_partition_msl); 
:has_Mean_wave_period_based_on_first_moment_for_swell_msl asString(?Mean_wave_period_based_on_first_moment_for_swell_msl); 
:has_Mean_wave_period_based_on_first_moment_for_wind_waves_msl asString(?Mean_wave_period_based_on_first_moment_for_wind_waves_msl); 
:has_Mean_wave_period_based_on_first_moment_msl asString(?Mean_wave_period_based_on_first_moment_msl); 
:has_Mean_wave_period_based_on_second_moment_for_swell_msl asString(?Mean_wave_period_based_on_second_moment_for_swell_msl); 
:has_Mean_wave_period_based_on_second_moment_for_wind_waves_msl asString(?Mean_wave_period_based_on_second_moment_for_wind_waves_msl); 
:has_Mean_wave_period_msl asString(?Mean_wave_period_msl); 
:has_Mean_wave_period_of_first_swell_partition_msl asString(?Mean_wave_period_of_first_swell_partition_msl); 
:has_Mean_wave_period_of_second_swell_partition_msl asString(?Mean_wave_period_of_second_swell_partition_msl); 
:has_Mean_wave_period_of_third_swell_partition_msl asString(?Mean_wave_period_of_third_swell_partition_msl); 
:has_100_metre_U_wind_component_surface asString(?100_metre_U_wind_component_surface); 
:has_100_metre_V_wind_component_surface asString(?100_metre_V_wind_component_surface); 
:has_10_metre_U_wind_component_surface asString(?10_metre_U_wind_component_surface); 
:has_10_metre_V_wind_component_surface asString(?10_metre_V_wind_component_surface); 
:has_10_metre_wind_gust_since_previous_post-processing_surface_1_Hour_2 asString(?10_metre_wind_gust_since_previous_post-processing_surface_1_Hour_2) .

makeTimeInstantByDateTime(?time,"dd/MM/yyyyTHH:mm:ss") a :TimeInterval ; :hasTimeStart asString(?time) ; :hasTimeEnd asString(?time).

