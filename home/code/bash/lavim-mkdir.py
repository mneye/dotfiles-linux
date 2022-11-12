import os

# Directory
project_name = input('Name of LaTeX project: ')
parent_dir = '/Users/martin/Latex/'
os.mkdir(os.path.join(parent_dir, project_name))
print(f'Directory created: {parent_dir}{project_name}')

# .tex file
path = f'{parent_dir}{project_name}'
file = f'{project_name}.tex'
dir_list = os.listdir(path)
with open(os.path.join(path, file), 'w') as fp:
    pass
# print(f'LaTeX file created: {parent_dir}{project_name}/{file}')

os.system(f'nvim {parent_dir}{project_name}/{file}')
