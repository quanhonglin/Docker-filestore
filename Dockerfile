FROM python:2.7

# cp wheel packtage to image
COPY ./lili-release /tmp/lili

# install wheel package and then rm
RUN pip install /tmp/lili/*.whl -i http://pypi.doubanio.com/simple --trusted-host=pypi.doubanio.com && rm -rf /tmp/lili

# expose server ports
EXPOSE 8000

# run lili
CMD ["python", "-m", "lili"]
