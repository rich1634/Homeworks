from datetime import datetime

# Получаем текущую дату и время
now = datetime.now()

# Форматируем вывод
current_time = now.strftime("%Y-%m-%d %H:%M:%S")

# Выводим текущую дату и время
print("Текущая дата и время:", current_time)