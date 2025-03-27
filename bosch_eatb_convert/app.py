from flask import Flask, request, jsonify
import subprocess

app = Flask(__name__)

@app.route('/crypt_matlab_files', methods=['PUT'])
def crypt_matlab_files():
    data = request.get_json()
    if not data or 'client_name' not in data or 'config_name' not in data:
        return jsonify({"error": "Missing client_name or config_name"}), 400
    
    client_name = data['client_name']
    config_name = data['config_name']
    
    # Execute EATBConsole.cmd
    try:
        subprocess.run(["D:\ETAS\EATB_encrypte\EATBConsole.cmd"], shell=True, check=True)
    except subprocess.CalledProcessError as e:
        return jsonify({"error": "Failed to execute EATBConsole.cmd", "details": str(e)}), 500
    
    response = {
        "message": "Received request successfully and executed EATBConsole.cmd",
        "client_name": client_name,
        "config_name": config_name
    }
    
    return jsonify(response), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=6000, debug=True)
