import os
from pypdf import PdfWriter

# pasta onde estão os PDFs
input_folder = "pdfs"
output_file = "docSEI.pdf"

# cria o objeto que vai juntar os PDFs
merger = PdfWriter()

# percorre os arquivos da pasta
for file in sorted(os.listdir(input_folder)):
    if file.lower().endswith(".pdf"):
        caminho = os.path.join(input_folder, file)
        print(f"Adicionando: {caminho}")
        merger.append(caminho)

# salva o PDF final
merger.write(output_file)
merger.close()

print(f"PDFs unidos com sucesso em: {output_file}")
