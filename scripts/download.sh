#!/bin/bash

# This script is meant to be used with the command 'datalad run'

datalad download-url --nosave \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fbarcodes%2Etsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fcell%5Fidentities%2Ecsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fgenes%2Etsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Ffiltered%5Fmatrix%2Emtx%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fbarcodes%2Etsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fcell%5Fidentities%2Ecsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fgenes%2Etsv%2Egz" \
                "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE133344&format=file&file=GSE133344%5Fraw%5Fmatrix%2Emtx%2Egz"

md5sum GSE133344_* > md5sums
