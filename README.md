# ProMotion and Formotion working together

In ProMotion version 0.7 (as of now not released but available on the version-0.7 branch), I've introduced
a new object called `ProMotion::FormotionScreen`. This allows seamless Formotion/ProMotion integration.

![formotion screen](http://d.pr/i/cjgK+)

```ruby
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
```



