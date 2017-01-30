FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.6

RUN gem install bio-bigbio --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fasta_filter.rb"]
CMD ["--help"]
