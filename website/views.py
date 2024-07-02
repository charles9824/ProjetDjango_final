from django.shortcuts import render

from website.models import Publications
from django.core.mail import send_mail
from django.contrib import messages


# Create your views here.
def index(request):
        post = Publications.objects.all()
        return render(request, 'index.html', context={'post' :post})

def apropos(request):
        return render(request, 'apropos.html')

def contact(request):
        if request.method == 'POST':
            nom = request.POST.get('nom')
            telephone = request.POST.get('telephone')
            email = request.POST.get('email')
            message = request.POST.get('message')

            data = {
                'nom': nom,
                'telephone': telephone,
                'email': email,
                'message': message
            }

            message = '''
            message: {}
        
            Email: {}
            De: {}
            Telephone: {}
        
            '''.format(data['message'], data['email'], data['nom'], data['telephone'])
            send_mail(data['telephone'], message, '', ['lucksonycharles@gmail.com'])
            messages.success(request, " votre forme a été envoyer avec succès ")
        return render(request, 'contact.html', {})

def readmore(request, id):
    service = Publications.objects.filter(id=id)

    return render(request, 'read_more.html', context={'service':service})


def reservation(request):
        return render(request, 'reservation.html')


def developpeur(request):
    return render(request, 'developpeur.html')

