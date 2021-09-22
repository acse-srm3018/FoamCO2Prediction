# ANN-based prediction of CO2-foam performance
[![image](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Note:**
This project was published in [Natural Resources Research](https://link.springer.com/article/10.1007/s11053-019-09459-8).

## Project description
CO2 injection into sub-surface oil reservoirs is a well-established technique for enhancing oil recovery. However, as CO2 is a gas and gases have low reservoir-sweep efficiency, injecting CO2 together with surfactant in the form of a foam can significantly improve its reservoir sweep efficiency. So, foam-CO2 flooding of petroleum reservoirs is a highly effective method able to enhance oil recovery from many reservoirs. Conducting laboratory experiments to assess the oil production and recovery factor performance associated with injecting foam-CO2 into specific oil reservoirs is expensive and time consuming. 
\
\
Simulation techniques can be a viable alternative if they can provide accurate predictions of flow rate and recovery factor from a standard set of input variables. Here, we couple a radial basis function (RBF) with evolutionary algorithm (particle swarm, imperialist competitive, genetic and teaching-learning based) to develop four hybrid-RBF prediction networks and apply them to predict efficiency of foam-CO2 flooding in oil reservoirs. The teaching-learning-based optimized (TLBO-RBF) model achieved the most accurate prediction performance for estimating oil flow rate (RMSE =0.0029, R2 = 0.993) oil recovery factor (RMSE =0.0872, R2 = 0.998) for the foam-CO2 injection EOR dataset. It can therefore be considered as another algorithm to estimate the performance of foam-CO2 injection in oil reservoirs efficiently while experimental data is not available.

## Dataset
You can download dataset from [Excel file](https://github.com/acse-srm3018/FoamCO2Prediction/blob/main/Data.xlsx).

The dataset includes 214 training and 15 testing data that will be used for training ANN models.

 Trainging dataset:
    The training dataset is 214 set of parameters as input data and their corresponding RF and flow rate as the target. 
 Test dataset:
    The training dataset is 15 set of parameters as input data and their corresponding RF and flow rate as the target.
## Models Comparsion and choosing

We trained different models to compare them and find the best ones based on their performance. 

The images of performance of different models on original datasets can be find under [images](https://github.com/acse-srm3018/FoamCO2Prediction/tree/main/images) directory. Based on the comparison of the accuracy and loss of the training and validation data, the ... and ... models were idetified as the best.

## Model Properties 

The results of the grid search is given in the tables which can be found in the [supplementary files](https://github.com/acse-srm3018/FoamCO2Prediction/tree/main/supplemantaryfile) directory.
        
## Data Preprocessing

Mean and standard deviation, Max and min of training and validation set were calcualted. Then pressure data standardized and normalized using these statistical values.
            

## Installation

you can clone and open directories using:

```
git clone https://github.com/acse-srm3018/FoamCO2Prediction
```

## Unit testing

To run the unit test suite
```
python tests.py
```

## Documentation

To generate the documentation (in html format)
```
python -m sphinx docs html
```

See the `docs` directory for the preliminary documentation provided that you should add to.

Also the articles published and can be found [here](https://link.springer.com/article/10.1007/s11053-019-09459-8).


## Further investigation

- Increasing number of data in dataset preparing more data using simulator or real labratory data.

## References

* Andrianov, A., Farajzadeh, R., Mahmoodi Nick, M., Talanana, M., Zitha, P.L., 2012. Immiscible foam for enhancing oil recovery: bulk and porous media experiments. Industrial & Engineering Chemistry Research. 51(5), 2214-2226.
* Ansari, H.R. 2014. Use seismic colored inversion and power law committee machine based on imperial competitive algorithm for improving porosity prediction in a heterogeneous reservoir. J Appl Geophys. 108, 61–8.
* Atashnezhad, A., Wood, D.A., Fereidounpour, A., Khosravanian, R. 2014. Designing and optimizing deviated wellbore trajectories using novel particle swarm algorithms, Journal of Natural Gas Science and Engineering. 21, 1184-1204 
* Atashpaz-Gargari E, Lucas C. 2007. Imperialist competitive algorithm: an algorithm for optimization inspired by imperialistic competition. Evolutionary computation,. CEC 2007. IEEE Congress on Evolutionary Computing. IEEE,  4661–4667. DOI: 10.1109/CEC.2007.4425083
* Berger, P.D., Berger, C.H., Hsu, I.K., 2000. Anionic surfactants based on alkene sulfonic acid. U.S. Patent 6,043,391.
* Broomhead, D.S., Lowe, D. 1988. Radial basis functions, multi-variable functional interpolation and adaptive networks. Royal Signals Radar Establishment, Malvern (United Kingdom), Memorandum No. 4148, 1–34. http://www.dtic.mil/dtic/tr/fulltext/u2/a196234.pdf 
* Castillo O. 2012. Type-2 Fuzzy Logic in Intelligent Control Applications. Springer. ISBN 978-3-642-24663-0.
