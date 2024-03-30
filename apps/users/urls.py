from django.urls import path

from .views import user_detail_view
from .views import user_update_view

app_name = "users"
urlpatterns = [
    path("~update/", view=user_update_view, name="update"),
    path("<str:username>/", view=user_detail_view, name="detail"),
]
