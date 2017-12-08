FROM glassfish:latest

COPY ./target/HelloDoc.war /

EXPOSE 8080 4848




RUN /usr/local/glassfish4/bin/asadmin start-domain domain1 && \
	/usr/local/glassfish4/bin/asadmin -u admin deploy /HelloDoc.war && \
	/usr/local/glassfish4/bin/asadmin restart-domain domain1
