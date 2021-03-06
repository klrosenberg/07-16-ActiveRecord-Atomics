# -----------------------------------------------------------------------------
#
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# Save new photographer to database
# -----------------------------------------------------------------------------
get "/saved" do
  @photographer = Photographer.create({"name" => params["name"]})
end

# -----------------------------------------------------------------------------
# Get erb file associated with
# -----------------------------------------------------------------------------
get "/photographers/:something" do
  erb :"/photographers/#{params["something"]}"
end
