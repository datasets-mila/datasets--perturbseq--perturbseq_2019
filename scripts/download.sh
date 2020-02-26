#!/bin/bash

# This script is meant to be used with the command 'datalad run'

for file_url in "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file GSE133344_RAW.tar" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fbarcodes%2Etsv%2Egz GSE133344_filtered_barcodes.tsv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fcell%5Fidentities%2Ecsv%2Egz GSE133344_filtered_cell_identities.csv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fgenes%2Etsv%2Egz GSE133344_filtered_genes.tsv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fmatrix%2Emtx%2Egz GSE133344_filtered_matrix.mtx.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fbarcodes%2Etsv%2Egz GSE133344_raw_barcodes.tsv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fcell%5Fidentities%2Ecsv%2Egz GSE133344_raw_cell_identities.csv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fgenes%2Etsv%2Egz GSE133344_raw_genes.tsv.gz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fmatrix%2Emtx%2Egz GSE133344_raw_matrix.mtx.gz"
do
        echo ${file_url} | git-annex addurl --raw --batch --with-files
done

md5sum GSE133344_* > md5sums
