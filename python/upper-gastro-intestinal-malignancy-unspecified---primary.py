# Ellen Wright, Peter T Schofield, Paul Seed, Mariam Molokhia, 2024.

import sys, csv, re

codes = [{"code":"B10y.00","system":"readv2"},{"code":"B115.00","system":"readv2"},{"code":"B11y.00","system":"readv2"},{"code":"B116.00","system":"readv2"},{"code":"B11yz00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('upper-gastro-intestinal-malignancy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["upper-gastro-intestinal-malignancy-unspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["upper-gastro-intestinal-malignancy-unspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["upper-gastro-intestinal-malignancy-unspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
