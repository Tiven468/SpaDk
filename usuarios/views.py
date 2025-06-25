from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Usuarios, Perfiles, Agendarcita, Horarios
from django.core.serializers.json import DjangoJSONEncoder
from datetime import datetime
import json

def adminpage(request):
    citas_qs = Agendarcita.objects.select_related('usuarios_idusuarios', 'horarios_idhorarios').all()
    citas = []
    for c in citas_qs:
        citas.append({
            "fecha": c.horarios_idhorarios.Fecha.strftime("%Y-%m-%d"),
            "hora": c.horarios_idhorarios.Hora,
            "servicio": c.Servicio,
            "usuario": c.usuarios_idusuarios.Nombre, 
            "metodopago": c.MetodoPago,
            "alergias": c.Alergias,
        })
    citas_json = json.dumps(citas, cls=DjangoJSONEncoder)
    return render(request, 'usuarios/admin.html', {"citas_json": citas_json})

def login(request):
    if request.method == 'POST':
        correo = request.POST.get('correo')
        contraseña = request.POST.get('contraseña')
        try:
            usuario = Usuarios.objects.get(correo=correo, contraseña=contraseña)
            request.session['usuario_id'] = usuario.idusuarios
            request.session['perfil'] = usuario.perfiles_idperfiles.descripcion.lower()
            if usuario.perfiles_idperfiles_id == 1:
                return redirect('adminbase')
            else:
                return redirect('index')
        except Usuarios.DoesNotExist:
            messages.error(request, 'Correo o contraseña incorrectos')
    return render(request, 'usuarios/login.html')

def logout_view(request):
    request.session.flush()
    return redirect('index')

def registro(request):
    if request.method == 'POST':
        try:
            nombre = request.POST['nombre']
            apellido = request.POST['apellido']
            tipodocumento = request.POST['tipodocumento']
            numerodocumento = request.POST['numerodocumento']
            correo = request.POST['correo']
            contraseña = request.POST['contraseña']
            celular = request.POST['celular']
            fechanacimiento = request.POST['fechanacimiento']

            perfil_usuario = Perfiles.objects.get(descripcion__iexact='usuario')

            nuevo_usuario = Usuarios(
                nombre=nombre,
                apellido=apellido,
                tipodocumento=tipodocumento,
                numerodocumento=numerodocumento,
                correo=correo,
                contraseña=contraseña,
                celular=celular,
                fechanacimiento=fechanacimiento,
                perfiles_idperfiles=perfil_usuario,
                usuarios_idusuario=0
            )
            nuevo_usuario.save()
            messages.success(request, 'Registro exitoso. Ahora puedes iniciar sesión.')
            return redirect('login')
        except Exception as e:
            return render(request, 'usuarios/login.html', {'error': 'Error al registrar: ' + str(e)})
    return render(request, 'usuarios/login.html')


def cuenta(request):
    usuario_id = request.session.get('usuario_id')
    if not usuario_id:
        return redirect('login')
    usuario = Usuarios.objects.get(idusuarios=usuario_id)
    citas = Agendarcita.objects.filter(usuarios_idusuarios=usuario).order_by('-idagendarcita')
    return render(request, 'usuarios/cuenta.html', {
        'usuario': usuario,
        'citas': citas
    })


def agendar(request):
    usuario_id = request.session.get('usuario_id')
    if not usuario_id:
        return redirect('login')
    
    try:
        usuario = Usuarios.objects.get(idusuarios=usuario_id)
    except Usuarios.DoesNotExist:
        return redirect('login')

    mensaje = None
    error = None

    if request.method == 'POST':
        fecha_hora_str = request.POST.get('fecha_hora') 
        servicio = request.POST.get('servicio')
        metodopago = request.POST.get('metodo_pago')
        alergias = request.POST.get('alergias')

        fecha = None
        hora = None

        if fecha_hora_str:
            try:
                fecha_completa = datetime.strptime(fecha_hora_str, '%Y-%m-%dT%H:%M')

                if fecha_completa < datetime.now():
                    error = 'No puedes agendar una cita en el pasado.'
                else:
                    fecha = fecha_completa.date()
                    hora = fecha_completa.strftime('%H:%M')
            except ValueError:
                error = 'Formato de fecha y hora no válido.'
        else:
            error = 'Debes seleccionar una fecha y hora válidas.'

        if not error and not (servicio and metodopago):
            error = 'Todos los campos son obligatorios.'
        
        if not error:
            if Horarios.objects.filter(fecha=fecha, hora=hora).exists():
                error = 'Ese horario ya está ocupado. Elige otro.'
            else:
                horario = Horarios.objects.create(fecha=fecha, hora=hora)
                Agendarcita.objects.create(
                    usuarios_idusuarios=usuario,
                    horarios_idhorarios=horario,
                    servicio=servicio,
                    metodopago=metodopago,
                    alergias=alergias
                )
                mensaje = 'Cita agendada exitosamente.'

    return render(request, 'usuarios/agendar.html', {
        'usuario': usuario,
        'mensaje': mensaje,
        'error': error,
        'fecha_actual': datetime.now().strftime('%Y-%m-%dT%H:%M') 
    })



def adminbase(request):
    return render(request, 'usuarios/base.html')



def crudusuarios(request):
    return render(request, 'usuarios/crudusuarios.html')

def listausuarios(request):
    usuarios = Usuarios.objects.all()
    return render(request, 'usuarios/crudusuarios.html', {'usuarios': usuarios})
