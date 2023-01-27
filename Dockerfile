FROM rogerpq/RepthonAr:slim-buster

RUN git clone https://github.com/rogerpq/RepthonAr.git /root/jepthon

WORKDIR /root/jepthon

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jepthon/bin:$PATH"

CMD ["python3","-m","jepthon"]
