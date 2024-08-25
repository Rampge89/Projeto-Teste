import requests
import base64
import os

def upload_to_pixeldrain(api_key, file_path):
    """Faz upload de um arquivo para o PixelDrain."""
    url = "https://pixeldrain.com/api/file"
    
    # Cabeçalho de autenticação
    auth_header = "Basic " + base64.b64encode(f":{api_key}".encode()).decode()

    headers = {
        "Authorization": auth_header
    }
    
    try:
        print(f"Fazendo upload do arquivo: {file_path}")
        
        with open(file_path, 'rb') as file:
            response = requests.post(url, headers=headers, files={'file': file})
        
        if response.status_code == 200:
            file_info = response.json()
            file_url = f"https://pixeldrain.com/u/{file_info['id']}"
            print(f"Upload bem-sucedido! Acesse o arquivo aqui: {file_url}")
        else:
            print(f"Falha no upload: {response.status_code} - {response.text}")
    
    except FileNotFoundError:
        print(f"Erro: O arquivo '{file_path}' não foi encontrado.")
    except Exception as e:
        print(f"Erro inesperado: {str(e)}")

def upload_folder(api_key, folder_path):
    """Faz upload de todos os arquivos em uma pasta para o PixelDrain."""
    # Percorre todos os arquivos na pasta
    for root, _, files in os.walk(folder_path):
        for file in files:
            file_path = os.path.join(root, file)
            upload_to_pixeldrain(api_key, file_path)

if __name__ == "__main__":
    api_key = input("Digite sua chave API do PixelDrain: ")
    path = input("Digite o caminho do arquivo ou da pasta que deseja enviar: ").strip()
    
    if os.path.isdir(path):
        upload_folder(api_key, path)
    elif os.path.isfile(path):
        upload_to_pixeldrain(api_key, path)
    else:
        print("O caminho fornecido não é um arquivo nem uma pasta válida.")
    
    input("\nPressione Enter para sair...")
