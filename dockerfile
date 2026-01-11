FROM python:3.9
WORKDIR /Structure_enquiry
COPY . .
RUN pip install --no-cache-dir pytest
# Run tests at build time (CI)
RUN pytest -v
# FIXED entrypoint (never replaced)
ENTRYPOINT ["python", "studentsdetails.py"]