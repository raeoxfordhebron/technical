# Technical Assessment

1.

2.

3. git commit -m "second commit" <br>
   git checkout -b "feature-branch" <br>
   git commit -m "awesome feature" <br>
   git checkout main <br>
   git commit -m "third commit" <br>
   git merge feature-branch <br>
   git commit -m "fourth commit" <br>
   
4. Imagine this scenario. After hours of troubleshooting and debugging, your code finally works. However, now you have to implement a new feature. On multiple occasions, I've personally experienced the fear, and reality, that I will alter the code and it will ultimately break again. All of that hard work needs to be saved in it's current instance. Luckily, Git enables us to make changes to our code without affecting our main branch.

As developers, we want our main branches to stay up-to-date and maintain high-quality code, especially when collaborating with others. Feature branching allows us to work asynchronously and protect the main branch. If your colleagues were working on the same block of code, at best, that's just time wasted. At worst, you can run into merge conflicts, which happens when Git cannot automatically resolve code differences. When needed, you can work on a specific branch, use a pull request, and merge the code into other branches or the main branch. What does that mean?


