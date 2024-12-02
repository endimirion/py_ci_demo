FROM python:3-alpine
WORKDIR /app
ADD ./requirements.txt /app
ADD ./test /app
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
CMD ["python", "-m", "pytest", "--alluredir", "allure_results"]
