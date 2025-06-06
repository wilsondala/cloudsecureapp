from flask import Flask, render_template, request, redirect, url_for, flash

app = Flask(__name__)
app.secret_key = 'chave-secreta'  # Necessário para flash messages

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        if email == 'admin@example.com' and password == '123456':
            return f'Bem-vindo, {email}!'
        else:
            flash('Credenciais inválidas')
            return redirect(url_for('login'))
    return render_template('login.html')
