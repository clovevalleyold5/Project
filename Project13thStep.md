## Project 13th Step

## Cloud Application Development, MSSA

### Kaiyuan Wang

### Quantico, Virginia

#### 20200427



## Use Case

#### Trigger

I want to have the application collect the bilibili.com lottery for me automatically

#### Precondition

I need to login my account first, since bilibili.com prevent robot program

#### Postcondition

lottery collected

#### Basic Course of Action

1. go to bilibili.com, login, go to the streaming channel
2. start the program, run the application
3. if there is a lottery, the application will make the browser open a new tab
4. wait until the timer finishes count down, the application collect the lottery

#### Alternate Course of Action

​	not applicable right now

## Functional Requirement

1. read the appeared link:

   when there is a lottery, the application should be able to read the page source code, say if there is a ”小电视“, “流星雨” or “总督”, the application will open that appeared link, and go to that page

2. read the count down:

   every lottery has a limited time window for user to collect, and that is 2 minutes to prepare before you can collect, and after that, 1 minute for you to collect, after that, the lottery expires. the application needs to read the count down, and once the count down reaches zero, click the link saying “点击领奖”

3. time interval:

   if application opens a new tab every time when there is a new lottery link appears, my computer may run out of memory fairly quick, so maybe I need to consider a different way, or a more efficient way to do this

