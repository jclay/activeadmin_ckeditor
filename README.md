# ActiveAdmin CKEditor
Easily install and use CKEditor with ActiveAdmin textareas.

Tested with:
* Rails 4.2
* ActiveAdmin 1.0.0
* Ckeditor 4.1.2

# Usage

Add it to your Gemfile
```ruby
gem 'activeadmin_ckeditor'
```
```
$> bundle install
```

Run the generator to setup assets

```
rails g active_admin_ckeditor:install
```

Now, you need to enable CKEditor on the fields in which you would like to use it.

```ruby
ActiveAdmin.register Email do
  permit_params :subject, :format_html, :format_text

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      input :subject
      input :format_html, as: :ckeditor
      input :format_text
    end
    actions
  end
end
```

You can pass additional config options in on the field if needed

```ruby
input :format_html, as: :ckeditor, input_html: { ckeditor: { height: 400 } }
```

# Configuring CKEditor

Copy the default config provided by the CKEditor gem into your local project.

From the root of your rails project:
```
cp $(bundle show ckeditor)/app/assets/javascripts/ckeditor/config.js ./app/assets/javascripts/config.js
```

Now you can customize config.js to suite your needs.
