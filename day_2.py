from day_2_presents import presents


def clean_presents(presents):
    clean_list = []
    presents = presents.split('\n')
    for p in presents:
         p = p.split('x')
         clean_list.append({"length":p[0],"width":p[1],"height":p[2]})
    return clean_list



def main():
    pass
