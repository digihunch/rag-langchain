FROM python:3.11

WORKDIR /app

COPY ./app .

RUN pip install chromadb && pip install unstructured langchain langchain-text-splitters && pip install unstructured[all-docs] && pip install flask && pip install langchain-community

EXPOSE 8080

CMD ["python", "app/app.py"]
