# Technical Assessment

## 1.

## 2.

I would check the HTTP requests on the Network tab in Dev Tools to see if there are requests pending or failed. This has been really useful information in troubleshooting for me. 

## 3. 
 
   git add . <br>
   git commit -m "first commit" <br>
   git commit -m "second commit" <br>
   git checkout -b "feature-branch" <br>
   git commit -m "awesome feature" <br>
   git checkout main <br>
   git commit -m "third commit" <br>
   git merge feature-branch <br>
   git commit -m "fourth commit" <br>
   
### 4. Git Tutorial

Imagine this scenario. After hours of troubleshooting and debugging, your code finally works. However, now you have to implement a new feature. On multiple occasions, I've personally experienced the fear, and reality, that I will alter the code and it will ultimately break again. All of that hard work needs to be saved in it's current instance. Luckily, Git enables us to make changes to our code without affecting our main branch.

As developers, we want our main branches to stay up-to-date and maintain high-quality code, especially when collaborating with others. Feature branching allows us to work asynchronously and protect the main branch. If your colleagues were working on the same block of code, at best, that's just time wasted. At worst, you can run into merge conflicts, which happens when Git cannot automatically resolve code differences. When needed, you can work on a specific branch, use a pull request, and merge the code into other branches or the main branch. What does that mean?

Initially, you will want to commit your main branch. That's the first step. 
```
git add .
git commit -m "commit message here"
git push origin main
```

You're ready to make a new feature branch.
```
git checkout -b feature-branch
```
As with most things in programming, there is more than one way to make a new branch. The above code snippet is the most efficient. The addition of the "-b" allows us to both create and checkout the new branch in the same line of code. It is shortand for the code below.

```
git branch feature-branch
git checkout feature-branch
```
After you do some work on that branch and push it back to the repo, you can compare and perform a pull request. Once the request is reviewed, you can merge the two commits.
```
git checkout main
git merge feature-branch
```
To clean things up, we will delete the feature branch since it has been merged into the main branch.
```
git branch -d feature-branch
git push origin --delete feature-branch
```

Now, your feature has been incorporated! Feature branching is incredibly important for developers, especially during collaboration. The process requires communication and review, which is beneficial for the health of the code. Branching helps produce new features and fix bugs.

### 5. Technical Book/Blog

I chose a technical blog that was shared by my instructor in General Assembly that I had bookmarked to go back to at some point. I read [this](https://www.builder.io/blog/console-log#tip-4-use-console-dir-for-functions-amp-dom-elements) article that introduces syntax tricks to help with logging and debugging. Many of them were small tweaks that would be easy to incorporate into everyday use. When I was in General Assembly, an instructor reitereated "When in doubt, log it out." This reinforces that the default is to use console.log() to debug. While beneficial itself, there are options that provide more information that just take similar repitition to learn. 

The article suggests tips in a numbered list. Instead of logging variables as is, we can wrap them in an object. When you view the terminal and compare the two, the difference is mostly visual. The values are more separated and directly correlated to their key, which saves you the brain space or time to look at the variable names to remember. It's really interesting that a lot of these suggestions are simply visual changes. The next tip utilizes an object to wrap around the variables and adds a prefix so you can search your terminal for that specific keyword. If you've got a bunch of objects, the article proposes you use console.table() instead of console.log() because it sets up the output in a table that makes it easily comparable. Number 4 is the only tip that doesn't result in time saved, but provides more information. With functions and DOM elements, you can use console.dir() to give you details about the properties. Finally, they give you the resource to utilize CSS in your console.

While I don't think I'm going to be adding CSS to my console, I love that the creativity in coding touches even the console, which isn't something I would have originally thought could use CSS. I'm always looking for ways to improve my debugging experience. Not only is it just an incredibly important tool, but it can be one of the most fun aspects of programming (as long as there's a light at the end of the tunnel!). This article was beneficial, though I wish there was slightly more explanation.







