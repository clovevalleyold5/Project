## Project 15th Step

## Cloud Application Development, MSSA

### Kaiyuan Wang

### Quantico, Virginia

#### 20200511



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
3. open a few up's room where has a high possibility of having lottery, the application will direct to each tab and collect the lottery
4. open a new tab where have a high volume of lotteries going on, and the application will collect the lottery faster than human speed

#### Alternate Course of Action

​	not applicable right now

## Functional Requirement

1. simulate the mouse:

   I find that visual studio can add autoitx3 library as a reference to simulate mouse click, which can help me to move the mouse to certain area on the webpage to click the “点击领奖” button to collect the lottery

2. simulate the keyboard:

   autoitx3 also has a function that allows me to simulate keyboard input, which I can use to switch between difference tabs by using ctrl + tab in a for loop, just need to determine how many times the loop needs to go

3. different case:

   since there is a time difference, majority of the lottery happens in the early morning to noon timeframe and very few occurs in the afternoon to midnight timeframe, I think the previous version only works for the latter situation where I can predict a few up's who has a high possibility of holding lottery, and set a the length of the for loop very high to have the application run through all night. but I think I can modify the application to a different version to help me collect the lottery when my finger can react to a high volume of lottery to collect. to achieve this, I can set the nTimes property in the MouseClick mothed to, say, 100. by doing so, I should be able to successfully collect a large amount of lottery before the windows expires. however, this case doesn't happen very often, so I haven't had a chance to test my application yet.
