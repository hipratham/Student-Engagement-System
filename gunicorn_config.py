import multiprocessing

# Gunicorn configuration
bind = "0.0.0.0:8000"
workers = multiprocessing.cpu_count() * 2 + 1
worker_class = "sync"
timeout = 120
keepalive = 5
errorlog = "gunicorn-error.log"
accesslog = "gunicorn-access.log"
capture_output = True
loglevel = "info"
