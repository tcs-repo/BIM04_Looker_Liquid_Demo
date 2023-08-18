connection: "looker_one_demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project



explore: looker_incident {



}

explore: liquid_demo_data {

  always_filter: {
    filters: [liquid_demo_data.UserRole: "{{_user_attributes['first_name']}}"]
  }

}
