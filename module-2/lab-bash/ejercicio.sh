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

5. for f in $(ls lorem); do echo $f; done
at.txt
lorem.txt
sed.txt

for f in $(ls lorem); do echo -n $f | wc -c ; done
       6
       9
       7

# El 3 no supe hacerlo, no me salia la frase con el resultado anterior. ¿Como se hacía?

6. top

Processes: 324 total, 2 running, 322 sleeping, 1283 threads            20:53:38
Load Avg: 3.08, 2.25, 2.18  CPU usage: 1.42% user, 3.31% sys, 95.26% idle
SharedLibs: 224M resident, 59M data, 63M linkedit.
MemRegions: 73659 total, 2147M resident, 109M private, 885M shared.
PhysMem: 7438M used (2685M wired), 1009M unused.
VM: 2029G vsize, 1115M framework vsize, 191721(0) swapins, 317480(0) swapouts.
Networks: packets: 44295586/32G in, 13962254/3708M out.
Disks: 2769324/41G read, 1866723/51G written.

ps -e
  PID TTY           TIME CMD
    1 ??        27:48.54 /sbin/launchd
   55 ??         0:57.24 /usr/libexec/UserEventAgent (System)
   56 ??         1:05.23 /usr/sbin/syslogd
   59 ??         0:16.39 /System/Library/PrivateFrameworks/Uninstall.framework/
   60 ??         0:32.28 /usr/libexec/kextd
   61 ??         2:12.73 /System/Library/Frameworks/CoreServices.framework/Vers
   63 ??         0:36.52 /System/Library/PrivateFrameworks/MediaRemote.framewor
   65 ??         0:46.78 /usr/sbin/systemstats --daemon
   67 ??         0:02.27 /System/Library/CoreServices/appleeventsd --server
   68 ??         0:36.69 /usr/libexec/configd
   69 ??         4:04.09 /System/Library/CoreServices/powerd.bundle/powerd
   71 ??         0:00.02 /usr/libexec/keybagd -t 15
   72 ??         4:24.70 /usr/libexec/logd
   75 ??         0:10.16 /usr/libexec/warmd
   76 ??         7:44.27 /System/Library/Frameworks/CoreServices.framework/Fram
   80 ??         0:00.06 /System/Library/CoreServices/iconservicesagent
   82 ??         0:00.27 /System/Library/CoreServices/iconservicesd
   83 ??         0:05.13 /usr/libexec/diskarbitrationd

7. system_profiler SPHardwareDataType; 

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro7,1
      Processor Name: Intel Core 2 Duo
      Processor Speed: 2,4 GHz
      Number of Processors: 1
      Total Number of Cores: 2
      L2 Cache: 3 MB
      Memory: 8 GB

8. alias ll='ls -la'
   alias duh='du -sh'
   alias ejer=/Users/JAMS23/datamad0820/module-2/lab-bash

9. tar -cvzf lorem-compressed.tar.gz lorem lorem-copy
a lorem
a lorem/at.txt
a lorem/lorem.txt
a lorem/sed.txt
a lorem-copy
a lorem-copy/.DS_Store
a lorem-copy/.gitkeep
a lorem-copy/at.txt
a lorem-copy/lorem.txt
a lorem-copy/sed.txt

10. tar -xzvf lorem-compressed.tar.gz -C lorem-uncompressed
x lorem/
x lorem/._at.txt
x lorem/at.txt
x lorem/._lorem.txt
x lorem/lorem.txt
x lorem/._sed.txt
x lorem/sed.txt
x lorem-copy/
x lorem-copy/._.DS_Store
x lorem-copy/.DS_Store
x lorem-copy/.gitkeep
x lorem-copy/._at.txt
x lorem-copy/at.txt
x lorem-copy/._lorem.txt
x lorem-copy/lorem.txt
x lorem-copy/._sed.txt
x lorem-copy/sed.txt
