import csv
import sys
import os
import shutil

# example usage: python split.py example.csv 200
# above command would split the `example.csv` into smaller CSV files of 200 rows each (with header included)
# if example.csv has 401 rows for instance, this creates 3 files in same directory:
#   - `example_1.csv` (row 1 - 200)
#   - `example_2.csv` (row 201 - 400)
#   - `example_3.csv` (row 401)

CURRENT_DIR = os.path.dirname(os.path.realpath(__file__))
filename = sys.argv[1]

full_file_path = os.path.join(CURRENT_DIR, filename)
file_name = os.path.splitext(full_file_path)[0]

if not os.path.exists('out'):
    os.makedirs('out')

rows_per_csv = int(sys.argv[2]) if len(sys.argv) > 2 else 5000

with open(filename) as infile:
    reader = csv.DictReader(infile)
    header = reader.fieldnames
    rows = [row for row in reader]
    pages = []

    row_count = len(rows)
    start_index = 0
    # here, we slice the total rows into pages, each page having [row_per_csv] rows
    while start_index < row_count:
        pages.append(rows[start_index: start_index+rows_per_csv])
        start_index += rows_per_csv

    for i, page in enumerate(pages):
        with open('{}_{}.csv'.format(file_name, i+1), 'w+') as outfile:
            writer = csv.DictWriter(outfile, fieldnames=header)
            writer.writeheader()
            for row in page:
                writer.writerow(row)

        shutil.move('{}_{}.csv'.format(file_name, i+1), 'out')
        print('DONE splitting {} into {} files'.format(filename, len(pages)))


# csv2xml.py
# Convert all CSV files in a given (using command line argument) folder to XML.
# FB - 20120523
# First row of the csv files must be the header!

# example CSV file: myData.csv
# id,code name,value
# 36,abc,7.6
# 40,def,3.6
# 9,ghi,6.3
# 76,def,99

#if len(sys.argv) != 2:
#    os._exit(1)
path = "out" # get folder as a command line argument
os.chdir(path)
csvFiles = [f for f in os.listdir('.') if f.endswith('.csv') or f.endswith('.CSV')]
for csvFile in csvFiles:
    xmlFile = csvFile[:-4] + '.txt'
    csvData = csv.reader(open(csvFile))
    xmlData = open(xmlFile, 'w')
#    xmlData.write('<?xml version="1.0"?>' + "\n")
    # there must be only one top-level tag
    xmlData.write('<locations>' + "\n")
    rowNum = 0
    for row in csvData:
        if rowNum == 0:
            tags = row
            # replace spaces w/ underscores in tag names
            for i in range(len(tags)):
                tags[i] = tags[i].replace(' ', '_')
        else: 
            xmlData.write('<locationInstance>' + "\n")
            for i in range(len(tags)):
                xmlData.write('    ' + '<' + tags[i] + '>' \
                              + row[i] + '</' + tags[i] + '>' + "\n")
            xmlData.write('</locationInstance>' + "\n")                
        rowNum +=1
    xmlData.write('</locations>' + "\n")
    xmlData.close()


