#What Skills!


##The Problem

Talent management systems rely on the feedback of central authority (managers, supervisors, etc.) who are suseptible to favortism, oversight (lack of technical skill and day-to-day insight), and other conflicts of interest. Modern centralized performance management ambitiously strives to create a wholistic view of an individual over months to upwards a year yet inevitably falls short. Greater insight into skills, performance, and individual outlook can be discovered by de-centralizing the review process and placing greater trust into a decentralied network. 

##The Solution

Bestow greater trust in your talent management system by creating a simplified and de-centralied system of reviews and recommendations. Build user profiles and give eachother "daps" towards specific skills. Endorsements are precious and limited in supply so choose carefully (the default set to '3'); there shall be no flooding of endorsements in this market! 

Use this tool to answer the following types of questions. How can you...

  - survey the strenth of skills within the business? 
  - identify the right individual with the right skills? 
  - trust those recommendations and skills?

##Usage

Create a user profile and build a collection of your skills (think of it as your resume). Provide accoldates to others who you think are the beez kneez, and feel free to provide comments as well if you need to contextualize any of your thoughts. 

##Implementation 
Local deployment is easy: 

```
git clone https://github.com/Tkwon123/whatskills/
bundle install
rails s 
```

Or if you want your own implementation via heroku:

```
git clone https://github.com/Tkwon123/whatskills/
cd what_skills
bundle install
heroku create
git push heroku master
rake db:migrate
```

Note that you will need to set up your own Amazon E3 instance to allow paperclip to work properly on Heroku. Simply use these commands with the credentials offered in your AWS permissions:

```
$ heroku config:set S3_BUCKET_NAME=your_bucket_name
$ heroku config:set AWS_ACCESS_KEY_ID=your_access_key_id
$ heroku config:set AWS_SECRET_ACCESS_KEY=your_secret_access_key
```

More instructions to do this can be found [here](https://devcenter.heroku.com/articles/paperclip-s3).