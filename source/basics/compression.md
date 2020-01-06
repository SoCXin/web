---
title: Compression
---

## definition

The process of reducing the size of a data file is often referred to as data compression. In the context of data transmission, it is called source coding; encoding done at the source of the data before it is stored or transmitted.

Source coding should not be confused with channel coding, for error detection and correction or line coding, the means for mapping data onto a signal.

#### LZ4

[LZ4](https://github.com/lz4/lz4) is lossless compression algorithm, providing compression speed > 500 MB/s per core, scalable with multi-cores CPU. It features an extremely fast decoder, with speed in multiple GB/s per core, typically reaching RAM speed limits on multi-core systems.