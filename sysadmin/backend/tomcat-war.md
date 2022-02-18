**TOMCAT**

2022.02.16.

1. repóból letöltettem a fileshare.war file-t
2. feltoltam a távolsági gépre a /tmp mappába:
   scp -i ../Art-Vasarely-backend.pem fileshare.war ubuntu@3.67.53.168:/tmp
3. felmentem a távolsági gépre:
   ssh -i Art-Vasarely-backend.pem ubuntu@3.67.53.168 
4. áthelyeztem a war fáljt a /opt/tomcat/webapps mappába (su userként)
