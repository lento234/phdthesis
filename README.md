# PhD thesis: Impact of vegetationon urban microclimate

[ETH Research Collection](https://doi.org/10.3929/ethz-b-000379379) 

## Abstract
Vegetation in cities is seen as an effective strategy to combat the growing UHI
as it provided natural cooling. Vegetation offers natural cooling primarily by 
providing shading to urban structures and additionally by extracting heat from 
the surroundings during the photosynthesis driven transpiration process. 
However, the effectiveness of transpirative cooling is directly related to the 
water availability of the plants, and in extreme environmental conditions such
as drought, the effectiveness of vegetation can be severely compromised. 
Furthermore, trees can obstruct ventilation which can have a negative impact on 
the pollution dispersion characteristics in cities. Therefore, the net impact 
of vegetation on pedestrian comfort and health in cities is dependent on 
various conditions and the most effective configuration for UHI mitigation is a
non-trivial problem. Thus, an urban microclimate model that can model the 
airflow, radiation and the water cycle in an integrated approach is necessary 
for accurately assessing the impact of vegetation in a complex urban 
environment.

The thesis aims at establishing a more accurate and detailed pre diction of the
thermal influence of vegetation in an urban environment by simultaneously 
taking in account of its heat, mass and momentum exchanges and the influence of
the water availability. The goal is to provide better guidelines for effective 
mitigation strategies with vegetation for any given urban, vegetation 
configuration and environmental conditions. The cooling potential of vegetation
such as trees on the microclimate of a street-canyon is studied using a 
computational fluid dynamics (CFD) model in OpenFOAM. The flow field is 
numerically modeled by solving the Reynolds-averaged Navier-Stokes equations 
(RANS) with realizable k − ε turbulence closure model. The vegetation model is 
integrated into the CFD solver as a porous medium, providing the necessary 
source terms for heat, mass and momentum fluxes, with additional closures for 
turbulence enhancement due to vegetation. A radiation model is developed to 
model the short-wave and long-wave radiative heat fluxes between the leaf 
surface and the surrounding. The radiation model enables to model the impact of 
the diurnal variation of solar intensity and direction, and the long-wave 
radiative fluxes between vegetation and nearby urban surfaces. Also, the water 
cycle driven by the transpiration process is explicitly modeled by coupling 
with an integrated soil heat and moisture dynamics model. A 
soil-plant-atmosphere continuum modeling approach is essential as the 
transpiration rate through the stomata is directly linked to the water 
availability at the roots of the plant. Therefore, the proposed method helps us
understand the response of vegetation during extreme environmental conditions 
such as drought and provides a more accurate prediction towards the cooling 
performance of vegetation. The present study investigates the influence of 
transpirative and shaded cooling due to vegetation on pedestrian comfort inside
a street canyon. The influence of various vegetation features such as size, 
shape, and density is studied to determine the optimal configuration for 
improving pedestrian comfort and health.

The thesis also employs wind tunnel experiments to provide a deeper 
understanding of the influence of an isolated tree on the flow. A comparative 
study of drag force and wake flow field of small model and natural trees shows 
the distinction between their responses and provide an insight into the 
challenges of representing trees in urban flow wind tunnel studies with model 
trees. Furthermore, the microclimate measurement of the small natural plant 
provide an understanding of the dynamic response of a plant and more a basis 
for the validation of the numerical model.

## Metadata:
- **Supervisors**: Prof. Dr. Thijs Defraeye, Dr. Jonas Allegrini, 
    Dr. Dominique Derome, Prof. Dr. Jan Carmeliet
- **Examiners**: Prof. Dr. Jan Carmeliet, Prof. Dr. Bert Blocken, 
    Prof. Dr. Peter Edwards
