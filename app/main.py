import os
from flask import Flask, jsonify

app = Flask(__name__)

# Variable que vendrá según el entorno de GitHub
ENV_NAME = os.getenv('ENVIRONMENT_NAME', 'Desarrollo Local')

@app.route('/')
def home():
    return jsonify({
        "status": "ok",
        "mensaje": f"API ejecutándose exitosamente en {ENV_NAME}"
    })

@app.route('/health')
def health():
    return jsonify({"status": "healthy", "environment": ENV_NAME}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)