FROM python:3
RUN pip install django==1.9
COPY . .
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver"]

