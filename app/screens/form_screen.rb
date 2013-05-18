class FormScreen < PM::FormotionScreen
  title "My Form"
  
  def table_data
    {
      sections: [{
        title: "Register",
        rows: [{
          title: "Email",
          key: :email,
          placeholder: "me@mail.com",
          type: :email,
          auto_correction: :no,
          auto_capitalization: :none
        }, {
          title: "Password",
          key: :password,
          placeholder: "required",
          type: :string,
          secure: true
        }, {
          title: "Password",
          subtitle: "Confirmation",
          key: :confirm,
          placeholder: "required",
          type: :string,
          secure: true
        }, {
          title: "Remember?",
          key: :remember,
          type: :switch,
        }]
      }, {
        title: "Account Type",
        key: :account_type,
        select_one: true,
        rows: [{
          title: "Free",
          key: :free,
          type: :check,
        }, {
          title: "Basic",
          value: true,
          key: :basic,
          type: :check,
        }, {
          title: "Pro",
          key: :pro,
          type: :check,
        }]
      }, {
        rows: [{
          title: "Sign Up",
          type: :submit,
        }]
      }]
    }
  end
end