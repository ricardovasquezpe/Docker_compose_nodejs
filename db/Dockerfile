FROM rikardo308/base_mongo

COPY run.sh /run.sh
COPY set_mongodb_password.sh /set_mongodb_password.sh

ARG admin_user=admin
ENV ENV_ADMIN_USER=$admin_user 

ARG admin_password=123
ENV ENV_ADMIN_PASSWORD=$admin_password 

RUN chmod +x /run.sh
RUN chmod +x /set_mongodb_password.sh

ENTRYPOINT [ "/run.sh" ]

CMD ["/bin/bash"]