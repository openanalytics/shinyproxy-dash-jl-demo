using Dash

app = dash(
    requests_pathname_prefix = ENV["SHINYPROXY_PUBLIC_PATH"],
    routes_pathname_prefix = ENV["SHINYPROXY_PUBLIC_PATH"],
)

app.layout = html_div() do
    html_h1("Hello World"),
    html_div("Dash: A web application framework for your data."),
    dcc_graph(
        id = "example-graph-1",
        figure = (
            data = [
                (x = ["giraffes", "orangutans", "rank"], y = [2, 14, 23], type = "bar", name = "SF"),
                (x = ["giraffes", "orangutans", "rank"], y = [12, 18, 29], type = "bar", name = "Montreal"),
            ],
            layout = (title = "Dash Data Visualization", barmode = "group")
        )
    )
end

run_server(app, "0.0.0.0", debug=true)
