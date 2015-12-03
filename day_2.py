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


def ribbon(presents):
    new_list = []
    for p in presents:
        sort_sides = sorted([p["l"], p['w'] , p['h']])
        short_a = sort_sides[0]
        short_b = sort_sides[1]

        total_a = short_a + short_a + short_b + short_b
        total_b = p['l']*p['w']*p['h']
        total = total_a + total_b
        # print("Total A : {}  Total B: {}".format(total_a,total_b))
        #2 + 2 + 3 + 3 = 10,    2*3*4 = 24
        new_list.append(total)
    return sum(new_list)



def main(presents):
    presents = clean_presents(presents)
    presents = total_wrapping(presents)

    return presents

def main_ribbon(presents):
    presents = clean_presents(presents)
    presents = ribbon(presents)
    return presents

print(main_ribbon(presents))
# potato = [{'l':2,'w':3,'h':4}]
# print(ribbon(potato))
