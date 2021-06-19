FROM devopsfaith/krakend:1.2.0

USER krakend

WORKDIR /etc/krakend

VOLUME [ "/etc/krakend" ]

COPY krakend.json /etc/krakend/

#ENV HOST=0.0.0.0 PORT=3005

#EXPOSE ${PORT}

EXPOSE 8080 8090 8000

ENTRYPOINT [ "/usr/bin/krakend" ]

CMD [ "run", "-c", "/etc/krakend/krakend.json" ]
