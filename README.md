# Foam CO2 Prediction

## Project description
CO2 injection into sub-surface oil reservoirs is a well-established technique for enhancing oil recovery. However, as CO2 is a gas and gases have low reservoir-sweep efficiency, injecting CO2 together with surfactant in the form of a foam can significantly improve its reservoir sweep efficiency. So, foam-CO2 flooding of petroleum reservoirs is a highly effective method able to enhance oil recovery from many reservoirs. Conducting laboratory experiments to assess the oil production and recovery factor performance associated with injecting foam-CO2 into specific oil reservoirs is expensive and time consuming. 
.
Simulation techniques can be a viable alternative if they can provide accurate predictions of flow rate and recovery factor from a standard set of input variables. Here, we couple a radial basis function (RBF) with evolutionary algorithms (particle swarm, imperialist competitive, genetic and teaching-learning based) to develop four hybrid-RBF prediction networks and apply them to predict efficiency of foam-CO2 flooding in oil reservoirs. A dataset with 214 published data records was compiled and used to train, optimize and test the four hybrid-RBF networks. The teaching-learning-based optimized (TLBO-RBF) model achieved the most accurate prediction performance for estimating oil flow rate (RMSE =0.0029, R2 = 0.993) oil recovery factor (RMSE =0.0872, R2 = 0.998) for the foam-CO2 injection EOR dataset. It can therefore be considered as another algorithm to estimate the performance of foam-CO2 injection in oil reservoirs efficiently while experimental data is not available.

## Dataset
You can download dataset from [Excel file](https://github.com/acse-srm3018/FoamCO2Prediction/blob/main/Data.xlsx)

The dataset includes 90 training and 10 testing data that will be used for training ANN models.

 Trainging dataset:
    The training dataset is 90 of as input data and their corresponding pressure and saturation maps as the     targets. 
 Test dataset:
    The training dataset is 10 of as input data and their corresponding pressure and saturation maps as the targets.

## Models Comparsion and choosing

We trained different CNN models to compare them and find the best ones based on their performance. The models we trained are Recurrent Residual-U-Net (RR U-Net) same as what has been used in this [work](https://github.com/soloist96/2D-recurrent-R-U-Net-surrogate-for-dynamic-flows) and attention residual recurrent U-net (A RR U-Net).

The images of performance of different models on original datasets can be find under [images](https://github.com/acse-srm3018/DeeplearningProxy/tree/main/images) directory. We used transfer learning on pretrained models to develop our models. Based on the comparison of the accuracy and loss of the training and validation data, the ... and ... models were idetified as the best.

## Model Properties 

A grid search was used to determine the optimal model hyperparameters; the hyperparameters which were chosen to be optimised were:
- Learning rate
- Batch Size

The results of the grid search is given in the tables which can be found in the [tables](https://github.com/acse-2020/acse-4-x-ray-classification-inception/tree/main/tables) directory:
        
## Data Preprocessing

Mean and standard deviation, Max and min of training and validation set were calcualted. Then pressure data standardized and normalized using these statistical values.
            

## Installation

It is recommended that you create a new virtual environment and install the required `Python` packages
within your virtual environment.

If you wish to create an `Anaconda` environment, an `environment.yml` file has
been provided from which you can create the `proxy-model` environment
by running
```bash
conda env create -f environment.yml
```
Within the base folder of this repository. If you wish to use some other virtual environment solution (or none at all),
when in your environment ensure that all requirements are satisfied via
```bash
pip install -r requirements.txt
```

Whichever solution you decide upon, the package `models` should then be installed
by running
```bash
pip install -e .
```
from within the base folder of this repository.

**NB**: Update the libraries to their latest versions before training.

## Results

The animation of pressure results from simulator is shown below.

<img src="https://github.com/acse-srm3018/DeeplearningProxy/blob/main/animation/animation_pressure_true_simulator.gif" alt="Overview" width="60%" height="60%"></a>

and the attention map from Attention RR U-Net model for different time from 90 days after production until 1800 days.

<img src="https://github.com/acse-srm3018/DeeplearningProxy/blob/main/animation/animation_pressure_attention_pred.gif" alt="overview" width="60%" height="60%"></a>

and saturation map animation

<img src="https://github.com/acse-srm3018/DeeplearningProxy/blob/main/animation/animation_saturation.gif" alt="overview" width="60%" height="60%"></a>

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

Also the pdf file of report placed in [report](https://github.com/acse-srm3018/DeeplearningProxy/blob/main/SeyedehRahaMoosavi_ACSE9_FinalReport.pdf) file.


## Further investigation

- Increasing number of data in dataset preparing more data using simulator or real labratory data .

## References

#### Model architecture

* Heinrich, M.P., Stille, M. and Buzug, T.M., 2018. Residual U-net convolutional neural network architecture for low-dose CT denoising. Current Directions in Biomedical Engineering, 4(1), pp.297-300.
* Alom, M.Z., Yakopcic, C., Hasan, M., Taha, T.M. and Asari, V.K., 2019. Recurrent residual U-Net for medical image segmentation. Journal of Medical Imaging, 6(1), p.014006.
* Azad, R., Asadi-Aghbolaghi, M., Fathy, M. and Escalera, S., 2019. Bi-directional ConvLSTM U-Net with densley connected convolutions. In Proceedings of the IEEE/CVF International Conference on Computer Vision Workshops (pp. 0-0).
* Jin, Z. L., Liu, Y. & Durlofsky, L. J. (2019), ‘Deep-learning-based reduced-order modeling for subsurface flow simulation’, arXiv preprint arXiv:1906.03729.
