FROM julia:alpine

RUN julia -e 'using Pkg; Pkg.add("Dash");'

EXPOSE 8050

WORKDIR /app

COPY app.jl .

CMD julia app.jl
