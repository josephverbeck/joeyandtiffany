require 'rack'
require 'sass/plugin/rack'

use Sass::Plugin::Rack

use Rack::Static,
    :urls => ["/images", "/stylesheets", "/js", "/fonts", "/dist"],
    :root => "public"

map "/header" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/header.html', File::RDONLY)
    ]
    } 
end


map "/footer" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/footer.html', File::RDONLY)
    ]
    } 
end

map "/" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/index.html', File::RDONLY)
    ]
    }
end

map "/rsvp" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/rsvp.html', File::RDONLY)
    ]
    }
end

map "/brewery" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/brewery.html', File::RDONLY)
    ]
    }
end

map "/food" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/stuff_your_face.html', File::RDONLY)
    ]
    }
end

map "/mnb" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/mnb.html', File::RDONLY)
    ]
    }
end

map "/harpers_ferry" do
    run lambda { | env | 
    [
        200, 
        { 'Content-Type'  => 'text/html', 'Cache-Control' => 'public, max-age=3600'},
        File.open('public/harpers_ferry.html', File::RDONLY)
    ]
    }
end



