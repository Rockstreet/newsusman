"""smallcms URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
# from filebrowser.sites import site

# Импортируем настройки проекта
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings

from django.views.generic.base import RedirectView


from django.conf.urls import include, url

from .regbackend import MyRegistrationView



favicon_view = RedirectView.as_view(url='/static/favicon.ico', permanent=True)


urlpatterns = [
    # url(r'^admin/filebrowser/', include(site.urls)),
    url(r'^accounts/', include('registration.backends.simple.urls')),
    #url(r'^register/$', RegistrationView.as_view(form_class=UserRegForm)),
    url(r'^register/$', MyRegistrationView.as_view(),name='registration_register'),



    url(r'^grappelli/', include('grappelli.urls')),  # grappelli URLS
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^parnters/', include('partners.urls',  namespace='partners')),
    url(r'^_nested_admin/', include('nested_admin.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'', include('page.urls')),
    url(r'', include('news.urls', namespace='news')),
    url(r'', include('gallery.urls', namespace='gallery')),
    url(r'', include('shop.urls', namespace='shop')),
    url(r'^cart/', include('cart.urls')),
    url(r'^accounts/', include('user_profile.urls', namespace='profile')),
]

if settings.DEBUG:
    if settings.MEDIA_ROOT:
        urlpatterns += static(settings.MEDIA_URL,
            document_root=settings.MEDIA_ROOT)


# Эта строка опциональна и будет добавлять url'ы только при DEBUG = True
urlpatterns += staticfiles_urlpatterns()
