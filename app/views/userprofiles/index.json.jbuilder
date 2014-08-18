json.array!(@userprofiles) do |userprofile|
  json.extract! userprofile, :id, :userid, :first_name, :last_name, :name, :date_of_birth, :gender, :phone_number, :email, :no_of_application, :status
  json.url userprofile_url(userprofile, format: :json)
end
