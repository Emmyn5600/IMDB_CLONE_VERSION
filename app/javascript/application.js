// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.turbolinks
//= require bootstrap
//= require turbolinks
import "@hotwired/turbo-rails";
import "./controllers";
import * as bootstrap from "bootstrap";
import Rails from "@rails/ujs";
Rails.start();
