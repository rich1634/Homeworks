import subprocess

def ping(host):
    try:
        # Выполняем команду ping с 4 пакетами (для Windows используем '-n')
        output = subprocess.run(['ping', '-n', '4', host], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, timeout=10)
        
        # Проверяем вывод на наличие строки, указывающей на успешный ответ
        if 'Received = 4' in output.stdout:
            print("success")
        else:
            print("doesn't work")
    except subprocess.TimeoutExpired:
        print("doesn't work (timeout)")
    except Exception as e:
        print(f"doesn't work ({e})")

# Вызываем функцию ping для google.com
ping("google.com")