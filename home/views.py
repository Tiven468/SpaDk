from django.shortcuts import render, redirect
from django.contrib import messages
from usuarios.models import Usuarios  # Importa tu modelo de usuario
from .forms import MensajeContactoForm

def index(request):
    nombre = None
    if request.session.get('usuario_id'):
        try:
            usuario = Usuarios.objects.get(idusuarios=request.session['usuario_id'])
            nombre = usuario.nombre
        except Usuarios.DoesNotExist:
            pass
    return render(request, 'home/index.html', {'nombre': nombre})

def servicios(request):
    nombre = None
    if request.session.get('usuario_id'):
        try:
            usuario = Usuarios.objects.get(idusuarios=request.session['usuario_id'])
            nombre = usuario.nombre
        except Usuarios.DoesNotExist:
            pass
    return render(request, 'home/servicios.html', {'nombre': nombre})

def quienessomos(request):
    nombre = None
    if request.session.get('usuario_id'):
        try:
            usuario = Usuarios.objects.get(idusuarios=request.session['usuario_id'])
            nombre = usuario.nombre
        except Usuarios.DoesNotExist:
            pass
    return render(request, 'home/quienessomos.html', {'nombre': nombre})

def contactenos(request):
    nombre = None
    if request.session.get('usuario_id'):
        try:
            usuario = Usuarios.objects.get(idusuarios=request.session['usuario_id'])
            nombre = usuario.nombre
        except Usuarios.DoesNotExist:
            pass

    if request.method == 'POST':
        form = MensajeContactoForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, '¡Tu mensaje ha sido enviado exitosamente!')
            return redirect('contactenos')
    else:
        form = MensajeContactoForm()
    return render(request, 'home/contactenos.html', {'form': form, 'nombre': nombre})
