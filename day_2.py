from day_2_presents import presents


def clean_presents(presents):
    clean_list = []
    presents = presents.split('\n')
    for p in presents:
         p = p.split('x')
         clean_list.append({"l":int(p[0]),"w":int(p[1]),"h":int(p[2])})
    return clean_list


def total_wrapping(presents):
    new_list = []
    fabric_totals = []
    for p in presents:
        extra_fabric = sorted(
        [p["l"]*p['w'] , p['w']*p['h'] , p['h']*p['l']]
    )
        extra_fabric = extra_fabric[0]
        total = (2*p["l"]*p['w']) + (2*p['w']*p['h']) + (2*p['h']*p['l'])
        total = total + extra_fabric
        new_list.append(total)

    return sum(new_list)


def main(presents):
    presents = clean_presents(presents)

    presents = total_wrapping(presents)

    return presents

print(main(presents))
