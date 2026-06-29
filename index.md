---
layout: default
---

## Refereed Publications (reverse date order)

This page shows refereed journal articles, conference articles, and book chapters. My [Google Scholar page](https://scholar.google.com/citations?user=mTlH4G8AAAAJ) may be slightly more up to date than this list.

{% bibliography --query @*[keywords ~= refereed] %}

## Book Chapters
{% bibliography --query @*[keywords ~= book-chapter] %}

## Refereed Journal Articles
{% bibliography --query @article %}

## Refereed Conference Proceedings
{% bibliography --query @*[keywords ~= conference-paper && keywords !~ non-refereed] %}

## Theses
{% bibliography --query @*[keywords ~= thesis] %}


## Other Publication Outputs

### Articles Under Review
{% bibliography --query @unpublished %}

### Non-Refereed Conference Proceedings
{% bibliography --query @*[keywords ~= conference-paper && keywords ~= non-refereed] %}

### Non-Refereed Conference Presentations
{% bibliography --query @*[keywords ~= conference-presentation] %}

### Open-Source Code Projects
{% bibliography --query @*[keywords ~= open-source] %}

### Open Data Sets
{% bibliography --query @*[keywords ~= open-data] %}

### Videos &amp; Supplemental Material
{% bibliography --query @*[keywords ~= supplemental-data] %}

### Selected Research-Led Artistic Performances
{% bibliography --query @*[keywords ~= performance] %}

### Selected Music Recordings
{% bibliography --query @*[keywords ~= music-recording] %}
