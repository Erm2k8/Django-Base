from django.apps import AppConfig


class {{ app_name | title }}Config(AppConfig): #type: ignore
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.{{ app_name }}'