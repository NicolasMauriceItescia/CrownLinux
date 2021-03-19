FROM registry.aptero.co/projet-linux
RUN mkdir ~/html_root/
COPY ./html_root/ /~/html_root/
COPY ./log_dump.sh/ /~/
COPY ./log_filter.sh/ /~/
COPY ./log_format.sh/ /~/
COPY ./log_move.sh/ /~/
COPY ./install_nginx_1.sh/ /~/
COPY ./install_nginx_2.sh/ /~/
COPY ./install_cron.sh/ /~/
CMD bash ./install_nginx_1.sh
CMD bash ./install_nginx_2.sh
CMD bash ./install_cron.sh 