import subprocess

def test_nginx_is_running_and_enabled():
    result = subprocess.run(['systemctl', 'status', 'nginx'], capture_output=True, text=True)
    assert 'active (running)' in result.stdout, "Nginx is not running or not enabled"

def test_nginx_http_response():
    result = subprocess.run(['curl', '-I', 'http://localhost'], capture_output=True, text=True)
    assert '200 OK' in result.stdout, "Nginx did not return 200 OK"