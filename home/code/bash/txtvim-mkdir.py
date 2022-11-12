import os

# Directory
project_name = input('Name of text file: ')
parent_dir = r'/Users/martin/Library/Mobile Documents/com~apple~CloudDocs/Uni/noter/'
# os.mkdir(os.path.join(parent_dir, project_name))
# print(f'Directory created: {parent_dir}{project_name}')

# .tex file
path = f'{parent_dir}'
file = f'{project_name}.txt'
dir_list = os.listdir(path)
with open(os.path.join(path, file), 'w') as fp:
    pass
# print(f'LaTeX file created: {parent_dir}{project_name}/{file}')

os.system(f'nvim {path}/{file}')
