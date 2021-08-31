Modeling Performance of Foam-CO2 Reservoir Flooding with Hybrid Machine-learning Models Combining a Radial Basis Function and Evolutionary Algorithms
=====================================================

Abstract:
---------

CO2 injection into sub-surface oil reservoirs is a well-established technique for enhancing oil recovery. However, as CO2 is a gas and gases have low reservoir-sweep efficiency, injecting CO2 together with surfactant in the form of a foam can significantly improve its reservoir sweep efficiency. So, foam-CO2 flooding of petroleum reservoirs is a highly effective method able to enhance oil recovery from many reservoirs. Conducting laboratory experiments to assess the oil production and recovery factor performance associated with injecting foam-CO2 into specific oil reservoirs is expensive and time consuming. Simulation techniques can be a viable alternative if they can provide accurate predictions of flow rate and recovery factor from a standard set of input variables. Here, we couple a radial basis function (RBF) with evolutionary algorithms (particle swarm, imperialist competitive, genetic and teaching-learning based) to develop four hybrid-RBF prediction networks and apply them to predict efficiency of foam-CO2 flooding in oil reservoirs. A dataset with 214 published data records was compiled and used to train, optimize and test the four hybrid-RBF networks. The teaching-learning-based optimized (TLBO-RBF) model achieved the most accurate prediction performance for estimating oil flow rate (RMSE =0.0029, R2 = 0.993) oil recovery factor (RMSE =0.0872, R2 = 0.998) for the foam-CO2 injection EOR dataset. It can therefore be considered as another algorithm to estimate the performance of foam-CO2 injection in oil reservoirs efficiently while experimental data is not available.
Data
~~~~~~~~~~~~~~~~~~~

This computational investigation uses a compiled data set of published results extracted from previous experimental studies of foam-CO2 reservoir injection core tests (Ydstebø, 2013, Zhao, 2017, Turta & Singhal, 2002, Li et al., 2010). The collected number of data records is 214, of which 171 data records are dedicted to a training data and 43 data records are devoted to a testing data. Each data records consists of measured values for six input variables: 
•	kind of surfactant;
•	porosity of reservoir rock (%);
•	permeability of reservoir rock (mD); 
•	pore volume of testing core (cm3); 
•	oil initial saturation; and,
•	the number pore volumes of foam-CO2 injected. 
RF and Q are the associate variables to be predicted by the models. The ranges of input data which is used in this test are reported


Methodology
~~~~~~~~~~~~~~~~~~~
RBF is one kind of artificial neural network (ANN) algorithm (Broomhead & Lowe, 1988, Du and Swamy, 2006), and together with the multi-layer perceptron (MLP)(Haykin, et al., 2009), it is one of the most populary used ANN methods. ANNs exploiting the RBF algorithm are feed-forward neural networks with a simple network structure with three-fixed layers consitst of  an input layer, a hidden layer, and, an output layer. This leads RBF to have simpler structure than an MLP, which typically involves more than one hidden layer, making it easier  to train an RBF network than an MLP network. Also, the simple structure of an RBF network makes it easier for it process data records that are outside the ranges covered by the training data subset (Keshmiri et al., 2004).

Data Preprocessing
~~~~~~~~~~~~~~~~~~~
Mean and standart deviation of training, test and validation set are chosen.

Conclusion
~~~~~~~~~~~~~~~~~~~
Four optimized hybrid-RBF artificial neural networks demonstrate highly accurate estimation accuracy for oil flow rate (Q) and oil recovery factor (RF) for a compiled dataset of experimental measurements for foam-CO2 injection tests into cores from oil reservoirs targeting enhanced oil recovery. The 214 data records, came from four published sources, were shared between training (80%) and testing (20%) datasets. The training dataset was used to train and optimizing the networks. the testing dataset was used to independently investigate the estimation precision of the tuned and optimized models. 
Input parameters are related to each data record (i.e., porosity, permeability, primary oil saturation, pore volume of core, injected pore volume (cc), and surfactant type used as a foaming agent and injected with the CO2). The accurate concurrent predictions of Q and RF by the hybrid-RBF models is based on the processing of these input variables by each of the optimized networks.  Statistical accuracy measures attained for the testing dataset by the superior accuracy of the RBF hybridized with the teaching-learning-based optimization algorithm (TLBO-RBF) model in predicting Q (RMSE =0.0029, R2 = 0.993) and RF (RMSE =0.0872, R2 = 0.998) demonstrate its excellent prediction capabilities for the foam-CO2 injection EOR dataset studied. Based on this prediction performance, we conclude that the TLBO-RBF offers potential to be exploited in commercially software to estimate performance of foam-CO2 injection in oil reservoirs, for which experimental core test measurements are not available for specific reservoirs. 

Function API
============

.. automodule:: inception
  :members:
  :imported-members:
