# Cloud Pak For Data Tutorial 

This is the repository for the CP4D Tutorial Data and setup. CP4D Tutorial is based on  Cloud Pak for data v2.1. For more information on this exciting new Data Science Platform, please visit  [ibm.com](http://ibm.com). CP4Data provides an end-to-end, integrated & governed data & analytics solution platform where Data Engineers Data Stewards, Data Scientists and Business Users collaborate to bring forward the best insights from the existing data in the enterprise.


## Flow
1. Download and Load the core setup modules.
2. Import the dataset into IBM CP4Data
3. Prepare and shape the dataset using Data Transform.
4. Using Imported Jupyter notebook , train a simple linear regression model.
5. Save the resulting model into CP4Data.
6. Use the saved model for predictions

## Featured technologies
* [Data Shaping and Cleansing] (https://en.wikipedia.org/wiki/Data_science): Tools to shape and pepare the Data
* [Data Science](https://en.wikipedia.org/wiki/Data_science): Systems and scientific methods to analyze
structured and unstructured data in order to extract knowledge and insights.
* [Artificial Intelligence](https://medium.com/ibm-data-science-experience): Artificial intelligence can be applied to disparate solution spaces to deliver disruptive technologies.
* [Python](https://www.python.org/): Python is a programming language that lets you work more quickly and integrate your systems more effectively.


# Watch the Video
[![IMAGE ALT TEXT](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=uRjiqiEeCts "Video Title")


# Steps
Follow these steps to create the required services and run the notebook locally.

1. [Clone the repo](#1-clone-the-repo)
2. [List the Samples](#2-list-vailable-samples)
3. [Load the Samples](#3-load-samples)


### 1. Clone the repo

Clone the `Cloud Pak for Data tutorial` repository locally. In a terminal, run the following command:

```
$ git clone git@github.com:IBM-ICP4D/ICP4DTutorial.git
```

### 2. List Available Samples


```
$ ./load_samples.sh --list
- banking
- manufacturing
- retail

```


### 3. Load Samples

Depending on your interest of domain, you would pass the domain in the loader.

```
$  ./load_samples.sh -t banking
```


 

# Learn more

* **Data Analytics Code Patterns**: Enjoyed this Code Pattern? Check out our other [Data Analytics Code Patterns](https://developer.ibm.com/code/technologies/data-science/)
* **AI and Data Code Pattern Playlist**: Bookmark our [playlist](https://www.youtube.com/playlist?list=PLzUbsvIyrNfknNewObx5N7uGZ5FKH0Fde) with all of our Code Pattern videos
* **Watson Studio**: Master the art of data science with IBM's [Watson Studio](https://datascience.ibm.com/)
 



For further questions please [contact ICP4D Cusomer Experience Team]
or Slack us ![alt text](http://icons.iconarchive.com/icons/bokehlicia/captiva/32/web-slack-icon.png  "icp4data-cx")

