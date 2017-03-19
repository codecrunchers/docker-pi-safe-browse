FROM resin/rpi-raspbian
USER root
RUN apt update
RUN apt upgrade -y
RUN mkdir /root/.ssh/
ADD ansible.pub /root/.ssh/ansible.pub
RUN cat ~/.ssh/ansible.pub > ~/.ssh/authorized_keys
RUN rm ~/.ssh/ansible.pub
RUN apt install -y vim openssh-server python
RUN mkdir /home/pi
RUN useradd pi -G sudo --home-dir /home/pi
RUN echo pi:raspberry | chpasswd
RUN echo root:raspberry | chpasswd
RUN chown pi:pi /home/pi
RUN sed -i 's/^%sudo.*//' /etc/sudoers
RUN echo "%sudo         ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN systemctl enable ssh
COPY config.sh /tmp/run.sh
CMD /bin/bash /tmp/run.sh


