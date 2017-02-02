[33mcommit b0a43dd3b8bdb2149bbaa7d1cbf2180d735c6aa4[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 20:36:52 2017 +0100

    Finish feature with payment, create new path
    
    Tables with payment have been completed.Create new routs for monthly
     payments.

[33mcommit 4ef78583b4e9e35b6267bdc90407fa351fb476d4[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 20:09:17 2017 +0100

    Install DataTables and using it to payment tables
    
    With DataTable plugin table looks much better and
    gives possibility to sort tables or search value

[33mcommit 0543faa46775f43dbdf6de79caa47e47fd107d9b[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 17:34:54 2017 +0100

    Refactor code breadcrumb and show payment
    
    Now this code look much better

[33mcommit ff6ffcf8207e3db87444ba58577ea630603c2c7a[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 17:29:56 2017 +0100

    New table which check students payments in this month
    
    If student dont paid for their tuition, in columns 'done' will display 'false'

[33mcommit 6aebe91c7674b0bf311195a8f857fa3b3567f253[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 12:00:38 2017 +0100

    Add breadcrumb with nawigation to payment

[33mcommit 2c8a6b297e56160d7db97aaf76414645a5aae262[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 10:35:36 2017 +0100

    New section payment in navigation

[33mcommit efe637bb9513861ca4abc7f61d93657bf9df5c83[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 10:28:25 2017 +0100

    Add now column (month) to tabele

[33mcommit be20b8542adf862c3be982f7371dc3d3dc699190[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 10:21:01 2017 +0100

    Refactor payment controller and view
    
    Code has been cleaned. Now i can continue creating table.

[33mcommit 9473fd61de7440611a1a81dfd292acb7cc859269[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Thu Feb 2 00:10:44 2017 +0100

    Write spec to new model Payment

[33mcommit 3573d45f6f133ae74b1ca46f642bdd5b17c3c032[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Wed Feb 1 23:51:24 2017 +0100

    Create simple crud for Payment

[33mcommit cad152febab2bee0c55cd6182e2d53c5a1624146[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Wed Feb 1 15:58:54 2017 +0100

    Add birthdate for random people in seed

[33mcommit cbba73587ed8c30078b3be6587d3e413dd65b575[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Wed Feb 1 14:14:54 2017 +0100

    Feature which add birthdate to student
    
    Date of birthday is optional.If the student does
    not set the date, the site will display 'No information'

[33mcommit 5b74f173731000c5f703f4fe075b5b7d061f8c4a[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 14:37:28 2017 +0100

    Configurate seed and devise by set host in production

[33mcommit 7393dcbbcd4b15d0ec5522fa0ea9f0956a9eb2df[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 11:24:01 2017 +0100

    Render partial with subject items in reports

[33mcommit 7c8431ba30a708d566aed02741b479c230322493[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 10:40:58 2017 +0100

    Features count notes avg

[33mcommit a11c56d144444bc1acb87cdd5bc9b55a6aee1270[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 01:56:20 2017 +0100

    Add badge to README.md

[33mcommit 321e2a0df9d5cf98658184d6367432e4949add35[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 01:25:44 2017 +0100

    Add teacher decorator method name with title

[33mcommit 166b61c9bf51f72472e6f68842c9a180befbe764[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 00:59:26 2017 +0100

    Refactor model student to accept nested attribute

[33mcommit db0659af5e988664d865dd25b91ccff244c2df0b[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 00:47:30 2017 +0100

    Repair relation subject and subject note

[33mcommit d517ba363f0438d11f3e19484b35e753d2b4487d[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 00:34:53 2017 +0100

    Check authentication for visitor

[33mcommit bf1fa1db18cf3e2db74069847b1616d6fb9d1f86[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Tue Jan 31 00:08:35 2017 +0100

    Refactor relation teacher/subject item to fix spec

[33mcommit 5a286f6b297841f19b2ed5116894fcfd5e622bbb[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 23:24:55 2017 +0100

    Fix routes to show report subject

[33mcommit d35e8a396484fc474107ec718cb83c6e86d095ab[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 22:59:52 2017 +0100

    Fix student model by create association with subject_items

[33mcommit 566d43d73c7cc4e61c6644ca8a3838cc2a89a63d[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 14:52:28 2017 +0100

    Prepare database to travis

[33mcommit f4350f1d02a13696978b4ef72a2fb0c255b39099[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 14:15:18 2017 +0100

    Change teachers routes to repair subject path

[33mcommit e1448dfa5c00dd6b89a520e36ffee32a7ed74292[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 13:22:37 2017 +0100

    Change home page

[33mcommit 3401d664e23de2922d33c7ecf8a27993980fe545[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 12:36:26 2017 +0100

    Add params subject_items to teacher controller

[33mcommit f71f4904a231791759d7cadf5652d43fb07bab1c[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 11:56:11 2017 +0100

    Delete never use table from schema

[33mcommit feb7baa945be2c8c3602a0cb22053e1e86c1bd9a[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 11:24:48 2017 +0100

    Add crumb for students to show path in page

[33mcommit d838a751a6846a2e96c2838bf8ca9998b07b8465[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 11:13:08 2017 +0100

    Repair user model to use devise helper

[33mcommit e3bbe6b83d9c8746ddcaf20f4c858c70c206e104[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Mon Jan 30 00:46:10 2017 +0100

    Create report_subjects path

[33mcommit ed5b92b7e327ae3d1be986e8309995d355d738ab[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Sun Jan 29 22:28:16 2017 +0100

    Add params to students controller

[33mcommit 8951f09e05759b69dc3abe6302707b86a7ce07bc[m
Author: Miłosz Sędziak <m.sedziak01@gmail.com>
Date:   Sun Jan 29 19:27:57 2017 +0100

    Repair routes to students path

[33mcommit 56bf9d9383337b620daee541942817fa6bcd8e71[m
Author: Jakub Kubacki <jakub.kubacki@netguru.co>
Date:   Tue Aug 16 13:26:09 2016 +0200

    Improve wording

[33mcommit 476dacf918dda3f10f89f0b0a218324b3b45c550[m
Author: Mateusz Stebnicki <mateusz.stebnicki@netguru.pl>
Date:   Fri Nov 6 11:23:24 2015 +0100

    initial commit
