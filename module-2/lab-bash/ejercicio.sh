1. echo "Hello World"

2. mkdir new_dir

3. rmdir new_dir

4. cp lorem/sed.txt lorem-copy/sed.txt

5. cp lorem/at.txt lorem-copy/at.txt; cp lorem/lorem.txt lorem-copy/lorem.txt

6. cat lorem/sed.txt

7. cat lorem/at.txt; cat lorem/lorem.txt

8. head -n3 lorem-copy/sed.txt

9. tail -n3 lorem-copy/sed.txt

10. nano lorem-copy/sed.txt
    - ctrl+o
    - ctrl+X

11. tail -n3 lorem-copy/sed.txt

"nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, 
vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
Homo homini lupus"

12. sed 's/et/ET/g' lorem-copy/at.txt

"At vero eos ET accusamus ET iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
deleniti atque corrupti quos dolores ET quas molestias excepturi sint occaecati cupiditate non 
provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum ET dolorum fuga. 
Et harum quidem rerum facilis est ET expedita distinctio. 
Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod 
maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. 
Temporibus autem quibusdam ET aut officiis debitis aut rerum necessitatibus saepe eveniET 
ut ET voluptates repudiandae sint ET molestiae non recusandae. 
Itaque earum rerum hic tenETur a sapiente delectus, ut aut reiciendis voluptatibus maiores 
alias consequatur aut perferendis doloribus asperiores repellat"

13. whoami

14. pwd

15. ls lorem

16. wc -l lorem/sed.txt

17. find lorem -type f | wc -l

18. grep et lorem/at.txt | wc -l

19. grep "et*" lorem/at.txt | wc -l

20. grep "et*" lorem-copy/*.txt | wc -l


"----------BONUS----------"

1. name=Juan

2. echo $name

3. mkdir $name

4. rmdir $name
