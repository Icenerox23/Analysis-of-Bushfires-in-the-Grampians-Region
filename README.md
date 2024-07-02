# Analysis of Bushfires in the Grampians Region
This is a comprehensive analysis of bushfire risk in the Grampians region of Victoria which makes up 20% of its landscape, focusing on the McArthur Forest Fire Danger Index (FFDI) as the main tool in understanding the changing dynamics of the bushfire seasons throughout the past 70 years.

# Acknowledgement
A great thanks for Dr Savin Chand for guiding me through this process, and Soubhik Biswas for supplying the data used to conduct this analysis.

# Forest Fire Danger Index
The McArthur Forest Fire Danger Index or FFDI is a common tool used in many regions of Australia to measure bushfire danger risk. The FFDI is calculated based on various factors which include temperature, humidity, wind speed and fuel availability also called the Drought Factor (DF) (Dowdy, 2017). This form of measurement will make the basis of this analysis, with data thankfully gathered by Soubhik Biswas as part of his PhD thesis, which spans from 1950-2020. ![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/a55e2bcd-5d89-47af-9d68-c6b8c089cb19)

# Purpose of Analysing Bushfires
Bushfires is a significant natural hazard in Australia, an has shaped its landscape, ecosystem and communities for thousands of years. Notable bushfires include 1983 Ash Wednesday fires, mid-2000s Mt Lubra Fire and the 2024 Grampians Bushfires. As the years progress there has been a significant increase in bushfire risk in the Grampians region. Factors like dry vegitation, low humidity, strong winds and climatic phenomena such as El Nino and La Nina (ENSO) have exacerbated the risk (CSIRO, 2023).

# 2024 Grampians Bushfires
Looking at the most recent events, the 2024 Grampians fires which spanned from Dadswell Bridge to Pomonal, burned over 50,000 hectares of land and around 3000 livestock lost. Over 250 personnel and vehicles were sent to deal with these fires. ![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/298186d6-dbbc-416e-98e9-a922d3e2075d)

# Methodology
The primary goals for this project are:
- Determine if the FFDI's are increasing in the Grampians Region
- Assess whether the bushfire seasons are expanding and to what extent
- Examine the impact of ENSO events on FFDI values as well as a minor discussion on other causes like the Indian Ocean Dipole (IOD) and the Southern Annular Mode (SAM).

This analysis was conducted using mainly R Studio with some Excel as well.

# Analysing the Increasing FFDIs
Here is a set of time series graphs created using R Studio, showing the mean FFDI for each month from 1950-2020. The plotted FFDI trends, show significant increases in all months over the past 70 years. With large spikes in FFDI indicating various climatic events such as ENSO, IOD and SAM. Some notable events can also be observed in this data which include: 1983 Ash Wednesday fires, mid-2000s Mt Lubra Fires and the 2020 Fires. If the data spanned into 2024, we would likely see another large spike in FFDIs which will correlate to the devestating fires that consumed the Grampians.
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/b491367e-6ad3-49e9-9534-75bbafd257e8)
From this data cleaned and analysed in R shows a clear significant increase in FFDI values over the past 70 years. Strong climatic influence on FFDI trends, underscoring the impact of time and external factors on the bushfire risks.

# Expanding Bushfire Season
Understanding the time variability of bushfire seasons is very important in knowing when to setup measures to combat these desasters. Preparedness and resilience is needed to further prevent these increasing dangers throughout the Grampians region. In this section we will be taking a deeper understanding on the expanding seasons of bushfires and how this will affect further risk in the future.
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/51155a22-07e1-4772-bd6e-12978530ea9a)
This graph created using Excel shows the mean FFDI's from two sectors, 1950-1985 and 1986-2020. This is to help better visualise the data to see how the increasing FFDI's are leading to earlier onset of the bushfire seasons. As we can see from this by comparing these two sectors, there is earlier onset of bushfire risk, as we compare the FFDI ratings on the summer dates starting with December, shows that these FFDIs are now showing up in late October and early November, similarly the tail end of these FFDI conditions are droping around mid March instead of Feburary as shown in sector 1.
A boxplot was also created to better visualise the data. ![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/fc7fe4d0-a000-46aa-a692-11f9aa55ab06)
Overall from this data there is a clear expanding bushfire risk throughout the recent years. From the rising FFDIs and expanding risk, there is likely to see longer bushfire seasons with even worse bushfires approaching, with this that is also exacurbated by climatic events such as ENSO, IOD and SAM.

# ENSO Effect on Bushfire Seasons
Global climate phenomena affects the risk of bushfires in Australia extremely. Most notable increase risks comes from the onset of El Nino events, which spell long droughts and hotter weather throughout its duration. Which in turn lead to some of the worst bushfires in Australia. ![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/7d5670be-fe6a-4524-9499-d4b93c4777d9)
This is why various agencies keep track on the ENSO events, specifically the Bureau of Meterology 
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/2f2381f9-3f45-423a-befe-b0fd0e6dad5e) 
where they keep track of the climate and display it on there website as shown above. From this table we can see the ENSO events spanning from 1980-2024. Looking at this table we can see how the El Nino events line upw ith many of the most extreme bushfire events in Australia and the Grampians region, notably the 1983 Ash Wednesday fires show a El nino event on Feburary which lines up with the FFDI ratings found on that year being extreme. Similar results can also be found with other notable bushfire events throughout the decades. To see how these ENSO events have truly affected the Grampians region, the raw data of enso events affecting FFDI's have also be gathered and compiled. 
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/b8fe40b4-2216-428f-96ac-c99fc4c117cb)
This data clearly shows extreme increases in bushfire risk during a El Nino event, especially in the summer months showing some of the highest levels of FFDIs. Even from this data there are also other events that also create increase risk of bushfires, the IOD and SAM.

# Indian Ocean Dipole and Southern Annualar Mode
Indian Ocean Dipole or IOD, brings about moisture variability either, this is indicated by the classification of a positive or negative IOD. 
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/f5efafdf-387a-41e8-87b2-286af9c68f74) 
This same effect is also shown in the Southern Annular Mode which as well as moisture affects rainfall and temperature in Australia. 
![image](https://github.com/Icenerox23/Analysis-of-Bushfires-in-the-Grampians-Region/assets/110153933/48083936-7852-406c-9676-92d060781ed3).

# Conclusion
Overall this study describes the significant increases in FFDIs throughout the decades in the Grampians Region, the increased risk as well as longer seasons, clearly show an increased measure of security and preparedness for the upcoming future, as well as various climate events that can cause some of the most devestating bushfires. 
The strengths of this project: are, that is shows a clear description of the FFDI ratings, spanning bushfire seasons and affect of ENSO climate driving the results. 
Areas to improve on: Further investigation on the othe rclimate drivers such as IOD and SAM, and observing various combinations that could cause great risk such as a perfect storm that could produce a serious risk to the Grampians region and Australia in general.
