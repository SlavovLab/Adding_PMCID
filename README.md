# Adding PMCID to LaTeX/BibTeX bibliography


This repository contains code and working example for adding PMCID to bibliographic references compiled by LaTeX/BibTeX


## Scripts and usage
- The script **get_doi.pl** extracts digital object identifiers (DOIs) from the bbl file. Run it as: perl get_doi.pl Your_bbl_file.bbl. It will output the DOIs in a file named DOIs_Your_bbl_file.bbl
- Take the DOIs from DOIs_Your_bbl_file.bbl and input them into [https://www.ncbi.nlm.nih.gov/pmc/pmctopmid/](https://www.ncbi.nlm.nih.gov/pmc/pmctopmid/) to extract in batch all corresponding PMCIDs. Save the output as csv file in ids.csv, which is an option of the website.
- The script **add_PMCID.pl** adds PMCIDs to the bbl file. Run it as: perl add_PMCID.pl  ids.csv Your_bbl_file.bbl

## Working example
- perl get_doi.pl Slavov_Research_Stategy.bbl
-  Get PubMed IDs in batch mode from [https://www.ncbi.nlm.nih.gov/pmc/pmctopmid/](https://www.ncbi.nlm.nih.gov/pmc/pmctopmid/) and save them ids.csv
- perl add_PMCID.pl ids.csv Slavov_Research_Stategy.bbl


## Customization
- This strategy requires that your bibliography outputs DOIs in the bbl file, so any modifications should preserve this feature.
- Depending on the formatting of the DOIs output in your bbl file, you may need to change the regular expressions in the perl scripts a bit.   
